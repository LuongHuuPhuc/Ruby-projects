# NHỮNG CÂU LỆNH PHỔ BIẾN TRONG RAILS
***
## **Đây là những câu lệnh để tương tác với Rails thông qua Command Prompt của Hệ điều hành Windows**
## Rails new
  - Đây là câu lệnh phổ biến dùng để tạo file, úng dụng trên Rails, cú pháp:
  ``` php
   rails new [name blog]
  ```
  ## Rails server (rails s)
   - Câu lệnh này dùng để chạy web server của Rails, cú pháp:
  ``` php
  rails server
  ```
  -Ngoài ra bạn có thể dùng ``` rails s ``` để chạy. s là viết tắt của server.
  ## Rails generate (rails g)
   - Câu lệnh này dùng để tạo ra các thành phần cơ bản của ứng dụng Rails, như Models, Views, Controllers, Migrations và nhiều thành phần khác. Lệnh này giúp bạn tạo ra cấu trúc cơ bản của ứng dụng và các phần tử cần thiết một cách nhanh chóng và dễ dàng.
   - Chạy thử câu lệnh này trong Command Prompt:
  ``` php
  rails generate
  ```
  - Cmd sẽ hiện ra các dòng sau: 
  ![image](https://github.com/LuongHuuPhuc/Ruby-projects/assets/156191563/83449b0c-368b-437c-a4d8-ca315499f833)

 - Cơ bản đó sẽ là những câu lệnh/[options] để tương tác với Rails trong Command hay Terminal.
1. Tạo một Model
   * Cú pháp để tạo Model trong Rails:
   ``` rails generate model NAME [thuộc tính[:type][:index]thuộc tính [:type][:index]] [options] ```
   * Ví dụ như bạn muốn tạo một Model tên **Post** với 2 field/thuộc tính là **title** và **content** với kiểu string thì câu lệnh sẽ là :
     ``` rails generate model Post title:string content:string ```
> Lệnh này sẽ tạo ra một file Migration để tạo bảng **"posts"** trong cơ sở dữ liệu, cùng với file model **"Post"** với các thuộc tính **title** và **content** .
> ***file Migration*** là file là một file chứa thông tin về các thay đổi cơ sở dữ liệu. Migration giúp bạn quản lý và cập nhật cấu trúc cơ sở dữ liệu của ứng dụng một cách linh hoạt và tự động. Khi bạn tạo hoặc thay đổi một model trong Rails, bạn thường sẽ sử dụng lệnh generate để tạo ra một file migration. File này sẽ chứa các chỉ thị và câu lệnh cần thiết để thực hiện các thay đổi cơ sở dữ liệu, như tạo bảng, thêm cột, xóa cột, và nhiều hơn nữa.
2. Tạo một Controller
  * Cú pháp để tạo một Controller cho ứng dụng:
    ``` rails generate controller NAME [action action] [options] ```
  * Ví dụ bạn muốn tạo controller **Welcome** và action là **index** và **show** trong controller đó thì câu lệnh sẽ là:
    ```rails generate controller Welcome index show ```
   > Lệnh này sẽ tạo ra một file Controller **Welcome** và các action **index** và **show**, cùng với các file view tương ứng.
3. Tạo một Migration
  * Cú pháp: `` rals generate migration AddStatusToNAME [field[:type]]``
  * Ví dụ:  ```rails generate migration AddStatusToProducts status:string ```
    > Lệnh này sẽ tạo ra một file migration để thêm cột **status** với kiểu dữ liệu string vào bảng **products**.
4. Tạo một Scaffold
  *  ``` rails generate scaffold NAME [field[:type][:index]field[:type][:index]] [options] ```
* Câu lệnh này tạo ra các files của một resource ở cả 3 thành phần chính như Model, View và Controller. Resource ở đây được xem như một Object, ví dụ như Post, User,...
* Tức là có nhiều trường hợp, thay vì bạn phải dùng các câu lệnh trên để generate ra các Controller, Model hay View thì Scanffold giúp bạn tiết kiệm rất nhiều thời gian.
* Ví dụ: ``` rails generate scaffold Post title:string content:string ```
  > Lệnh này sẽ tạo ra một scaffold cho **Post**, bao gồm Model, View và Controller cần thiết để quản lý dữ liệu của **Post**.

### Lệnh generate là một công cụ rất mạnh mẽ trong Rails CLI, giúp bạn tạo ra và quản lý các thành phần cơ bản của ứng dụng một cách hiệu quả và tiết kiệm thời gian.

## Rails console (rails c)
``` php
rails c
```
* Câu lệnh này giúp chúng ta tương tác với ứng dụng Rails thông qua command line. Truy vấn database hay chạy thử các hàm trong ứng dụng.
 ***
## LƯU Ý 
* Sau khi chạy lệnh generate, bạn cần chạy lệnh `rails db:migrate` để thực thi các file migration và cập nhật cơ sở dữ liệu.
* Luôn kiểm tra và chỉnh sửa các file được tạo ra bởi lệnh generate để đảm bảo chúng đáp ứng đúng yêu cầu và logic của ứng dụng bạn.
### Trang chủ chính thức của Rails cũng có viết vể cách dùng những câu lệnh này
[Command Line in Rails](https://guides.rubyonrails.org/command_line.html)


