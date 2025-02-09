EMAIL = "Huuphuc1016@gmail.com"
PASSWORD = "playguitar"
Password_Vault = {
  aws: {username: "Collin", password: "bigass"}
  # "Aws" => {"username" => "Collin", "password" => "bigass"}
}


def welcome_message 
  puts "Welcome to None Shall Pass - A Password Manager"
end

def prompt_user_for_email
  puts "Please sign in to continue"
  print "Enter email:"
  gets.chomp
end

def verify_user_email(user_mail)
  if user_mail != EMAIL
    puts "Invalid email"
    exit 
  end
end

def prompt_user_for_password
  print "Enter password: "
  gets.chomp
end

def verify_user_password(user_password)  
  if user_password != PASSWORD
    puts "Invalid password"
    exit 
  end 
end 

def greet_user(user_mail)
  puts "\nHello, #{user_mail}"
  puts "What would you like to do ?"
end

def menu_options
  puts "1. Add new service credentials"
  puts "2. Retrieve an existing service's credentials"
  puts "3. Exit"
end

def get_user_menu_selection
  puts "Select you option: "
  user_selection = gets.chomp
end

def set_new_service_name
  print "Enter the name of service: "
  new_service = gets.chomp
  Password_Vault[new_service.to_sym] = {}
  new_service
end

def set_username_for(new_service)
  print "Please enter the username for this new service: "
  new_service_username = gets.chomp
  Password_Vault[new_service.to_sym][:username] = new_service_username
end

def set_password_for(new_service)
  print "Please enter the password for this new service:"
  new_service_password = gets.chomp
  Password_Vault[new_service.to_sym][:password] = new_service_password
end

def retrieve_service_name
  print "Please enter the name of the sevice you wish to access credentials for:"
  gets.chomp
end

def retrieve_service_credentials_for(service_name)
  Password_Vault[service_name.to_sym]
end 

def display_service_credentials(service_name, credentials)
  puts "Here are the credentials for #{service_name}:"
  credentials.each do |key, val|
    puts "#{key}: #{val}"
  end
end

def exit_program
  puts "Exiting the program, Goodbye !"
  exit
end

def handle_user_selection(user_selection)
  case user_selection
  when "1"
    new_service = set_new_service_name 
    set_username_for(new_service)
    set_password_for(new_service)
  when "2"
    request_service_name = retrieve_service_name
    credentials = retrieve_service_credentials_for(request_service_name)
    display_service_credentials(request_service_name, credentials)
  when "3"
    exit_program
  else
    puts "Invalid option, try again !"
  end
end

#main
welcome_message 
user_mail = prompt_user_for_email
verify_user_email(user_mail)
user_password = prompt_user_for_password
verify_user_password(user_password)
greet_user(user_mail)
menu_options
user_selection = get_user_menu_selection
handle_user_selection(user_selection)