# LẬP TRÌNH RUBY TRÊN VIM 
*** 
``` php
set HelloWorld!
```
## ***Vim là gì ?***
- Vim là một trình biên soạn văn bản mã nguồn mở (text editor).
- Giao diện gọn gàng đơn giản, không tốn nhiều dung lượng.
- Vim là có hẳn 1 bộ các phím tắt và quy ước sẵn, cần học thuộc đống quy tắc đó thì mới "pro" Vim được.
- Ngoài các quy ước về phím tắt riêng thì Vim còn có các lệnh dùng để thực thi với tập tin và file, các lệnh đó được viết sau dấu `:` trong chế độ *Normal* và *Visual*.
## ***Các Mode trong Vim*** 
* Vim có nhiều mode nhưng thông thường, bạn sẽ làm việc chủ yếu với 3 mode cơ bản:
   - Insert mode: Mode này cho phép bạn nhập, chỉnh sửa văn bản từ bàn phím. Nhấn nút `I` để chuyển sang mode này.
   - Normal mode: Mode này giúp bạn thực hiện các lệnh command, tương tác với text object. Nhấn nút `Esc` để chuyển sang mode này.
     > Ví dụ nếu như bạn gõ d trong Insert mode thì sẽ hiện ra ký tự d trên màn hình như trong Normal mode thì nó là 1 lệnh xóa(delete) một text Object nào đó.
   - Visual mode: Cho phép bạn select 1 vùng text nhất định nào đó. Nhấn nút `v` để chuyển sang mode này.
***
### Cấu trúc một lệnh của Vim luôn là
``` [number][commnand][motion/text object] ```
* `number`: là số lần thực hiện câu lệnh.
* `command`: là các hành động mình muốn, như thêm, xóa, sửa, thay thế,...




## ***Hướng dẫn cài đặt và cấu hình Vim***
