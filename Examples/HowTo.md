# Cách để tạo một dự án đầu tiên với Rails
*** 
```php 
howto("creat your first project");
```
### Sau khi cài đặt xong các phần mềm cần thiết thì ta có thể tạo dự án đầu tiên.
* Bước 1: Kiểm tra phiên bản của Ruby on Rails được cài đặt:
```rails --version```
* Bước 2: Tạo dự án
Để tạo một dự án thì trước tiên cần phải tạo một folder mang tên "RubyonRails" để lưu trữ những dự án đó ở ổ D hoặc ổ C. Ở thanh folder, bạn gõ "cmd" để mở thanh lệnh rồi đặt tên cho dự án dó với cú pháp:
```rails new <tên dự án>```
![image](https://github.com/LuongHuuPhuc/Ruby-projects/assets/156191563/dff05a65-b659-4269-b709-4d79b2b6a473)
***
![image](https://github.com/LuongHuuPhuc/Ruby-projects/assets/156191563/c4f75083-8698-4291-9f00-3ff9d284f17a)

Khi đó chương trình sẽ tự động tạo cho chúng ta project.

![image](https://github.com/LuongHuuPhuc/Ruby-projects/assets/156191563/8b9db127-27fa-492b-a34c-cc82651373c9)

Tuy nhiên để chạy được ứng dụng thì chúng ta cần sử dụng một HTTP web server để phục vụ việc chạy ứng dụng. Với Ruby on Rails chúng ta cũng có thể sử dụng Apache, tuy nhiên điều tuyệt vời ở Rails đó là bạn có thể sử dụng câu lệnh rails để tạo server cho ứng dụng thay vì phải cài đặt và cấu hình Apache. Web server được cung cấp bởi Ruby on Rails có tên là WEBrick và để khởi động WEBrick bạn các dòng lệnh sau:
```cd Tên Dự Án``` 
![image](https://github.com/LuongHuuPhuc/Ruby-projects/assets/156191563/da1df25d-1ef1-4695-b638-9e8b7ea34755)
* Kế tiếp màn hình sẽ nhảy tới:
![image](https://github.com/LuongHuuPhuc/Ruby-projects/assets/156191563/04e4f29b-213d-4796-a971-63cb787d5c5d)
Tiếp tục nhập lệnh sau:
```Tên Dự Án> rails server``` 
* Câu lệnh trên sẽ khởi động WEBrick. Nếu muốn dừng WeBrick, bạn dùng tổ hợp Ctrl + C.
* Sau khi hoàn thành tạo server, trên màn hình command sẽ hiện ra một địa chỉ http cho server của bạn. Copy địa chỉ đó và Paste lên chrome hoặc google, màn hình sẽ hiện ra: ![image](https://github.com/LuongHuuPhuc/Ruby-projects/assets/156191563/dd713cb1-4f14-463b-af12-1fcc0ecca43a)

## Vậy là đã tạo thành công project.
## Tuy nhiên chưa dừng ở đó...
Đây mới chỉ là bước khởi động Server và tạo file trong dự án thôi. Để có thể code và tạo ra một trang web thì sau đây là những bước cần thự hiện
*** 
### A. Create a new Rails Application !
1. Vào ổ chứa file làm dự án của mình (ổ C,D,...). Ở thanh path, nhập chữ ***cmd** để vào Command Prompt(đối với Windows, còn Terminal đối với Linux).
 ![image](https://github.com/LuongHuuPhuc/Ruby-projects/assets/156191563/979e408a-ec73-4ce5-bc63-3bebe8b2c583)
2. Ở đây, dùng lệnh `cd` + [Tên folder chứa dự án] để trỏ vào folder cần làm việc.
   > Ví dụ folder dùng để lưu dự án của mình là "RubyonRails".
   ![image](https://github.com/LuongHuuPhuc/Ruby-projects/assets/156191563/27c86744-0440-4729-b27d-bcc8fda746c5)
3. Làm tương tự tiếp tục như trên với lệnh `cd` vào dự án cần làm. Nếu chưa tạo dự án thì quay lại mục trên để xem cách tạo folder dự án Ruby on Rails.
4. Dùng lệnh `ls` để kiểm tra các thư mục và các file hiện có trong folder.
![image](https://github.com/LuongHuuPhuc/Ruby-projects/assets/156191563/9b78bf7e-b9a3-4806-8bc1-44b4b9027911)
5. Tiếp theo dùng lệnh `bundle install` để cài đặt gem vào trong dự án cần làm.
 ![image](https://github.com/LuongHuuPhuc/Ruby-projects/assets/156191563/01e7edd5-5ffb-4add-8b36-91ab8981ea96)
6. Sau khi cài đặt xong gem, sử dụng trình đọc text, chỉnh sửa văn bản code bất kỳ để mở Folder dự án đó lên( Mac Os có Sublime text, nhưng mình dùng Windows nên recommend mọi người sử dụng ***Vim***, vì ***Vim*** siêu mạnh trong việc này)
![image](https://github.com/LuongHuuPhuc/Ruby-projects/assets/156191563/ce9f47e8-384f-4a0b-b335-623fb7ae8b0d)
- Lúc này màn hình sẽ hiện ra các file và các folder trong dự án của bạn.
- Và đừng quên khởi động cả server nữa nhé. `rails server`.
### B. Tạo một Web "Welcome"
