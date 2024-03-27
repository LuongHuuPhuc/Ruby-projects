# Cách để tạo một dự án đầu tiên
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

