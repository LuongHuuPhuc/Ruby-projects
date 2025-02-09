EMAIL = "Huuphuc1016@gmail.com"
PASSWORD = "abcdef"
#Hash chua thong tin dang nhap cua cac dich vu
Password_Vault = {
  "Aws" => {"Username" => "Collin", "Password" => "123456"},
  "Hms" => {"Username" => "Jack", "Password" => "jackbocon"}
  # Aws: {username: "Collin", password: "123456"}
}

class Inf
  def initalize 
    @running = true
  end
  
  def welcome_message(user_mail)
    puts "Hello, #{user_mail}"
    puts "Welcome to Password Manager !"
  end
  
  def greet_user(user_mail)
    puts "What would you like to do, #{user_mail} ?"
  end

  def service 
    while @running
      puts "\n1. Add new service credentials"
      puts "2. Retrieve an existing service credentials"
      puts "3. Exit"
      print "Please enter a number: "
      user_selection = gets.chomp

      case user_selection
      when "1"
        add_service 
      when "2"
        retrieve_service
      when "3"
        puts "Exiting the program, goodbye !"
        @running = false
      else
        puts "Invalid option, try again !"
      end
    end
  end

  def add_service
    print "Enter the name of the new service: "
    new_service = gets.chomp

    if Password_Vault.key?(new_service)
      puts "Service already exists, try again !"
      return 
    end

    print "Enter the username for this service: "
    new_service_username = gets.chomp
    print "Enter the password for this service: "
    new_service_password = gets.chomp
    
    Password_Vault[new_service]=  {"username" => new_service_username, "password" => new_service_password}
    puts "Service added successfully"
  end

  def retrieve_service
    print "Enter the name of the service you wish to access: "
    request_service_name = gets.chomp

    if Password_Vault.key?(request_service_name)
      credentials = Password_Vault[request_service_name]
      puts "Credentials for #{request_service_name}: "
      credentials.each{|key, val| puts "#{key}: #{val}"}
    else
      puts "Service not found !"
    end
  end

  def authenticate 
    loop do 
      print "Enter your mail: "
      user_mail = gets.chomp

      if user_mail == EMAIL
        loop do 
          print "Enter password: "
          user_password = gets.chomp

          if user_password == PASSWORD
            puts "Login successfully !\n"
            welcome_message(user_mail)
            greet_user(user_mail)
            initalize
            service
            return 
          else
            puts "Invalid password ! Try again"
          end
        end 
      else
        puts "Invalid email ! Try again"
      end
    end
  end
end

#main
inf = Inf.new
inf.authenticate