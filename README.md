<h3 align="center">Flutter nền tảng (Phần 1)</h3>
<details>
<summary><b>I. Widget trong Flutter là gì?</b></summary>
- Widget là các khối xây dựng cơ bản dùng để mô tả giao diện và mọi thứ bạn nhìn thấy hoặc tương tác trên màn hình.<br>
- Widget cung cấp các khối xây dựng cơ bản, không phụ thuộc vào kiểu dáng của khung Flutter. Nó bao gồm các thành phần bố cục cơ bản (Row, Column, Stack, ...), các mô hình tương tác, bộ điều khiển hoạt ảnh và các widget trình bày cơ bản.
</details>
<details>
<summary><b>II. Phân biệt Stateful Widget và Stateless Widget</b></summary>
Thông thường ta sử dụng Stateless Widget khi cần sử dụng giao diện tĩnh, còn Stateful Widget khi ta cần giao diện động có thể thay đổi theo tương tác của người dùng.<br>
Khi một widget cần quản lý trạng thái của chính nó thì là Stateful còn không thì là Stateless.
  
<b>Stateless Widget:</b> [1.dart](./1.dart) <br>
<b>Stateful Widget:</b> [2.dart](./2.dart), [3.dart](./3.dart)
</details>
<details>
<summary><b>III. Cấu trúc Widget cơ bản của ứng dụng Mobile</b></summary>

Scaffold là một widget trong Flutter giúp xây dựng giao diện ứng dụng. Nó cung cấp cấu trúc cơ bản với các thành phần giao diện người dùng phổ biến, giúp bạn sắp xếp bố cục mà không phải tự xử lý mọi chi tiết.

Một số thuộc tính quan trọng:
- `appBar`: Thanh tiêu đề, thường chứa tiêu đề ứng dụng hoặc các nút điều hướng.
- `body`: Khu vực chứa nội dung chính của màn hình.
- `floatingActionButton`: Nút hành động nổi, thường dùng cho thao tác chính như thêm mới hoặc lưu lại.
- `drawer`: Thanh điều hướng bên, thường dùng để chứa menu.
- `bottomNavigationBar`: Thanh điều hướng dưới để chuyển đổi giữa các phần trong ứng dụng.

<b>Mã nguồn tham khảo:</b> [4.dart](./4.dart)
</details>
<details>
<summary><b>IV. Widget Container</b></summary>

Bạn có thể dùng Flutter DevTools để xem cấu trúc UI sau khi được build. Vì UI trong một dự án có thể rất lớn, bạn nên chia giao diện thành các widget nhỏ.

`Container` bao bọc một widget con và cho phép thêm khoảng cách, màu nền, viền, bo góc, kích thước, căn chỉnh hoặc biến đổi hình học. Nó kết hợp các khả năng như `Padding`, `Align`, `DecoratedBox`, `ConstrainedBox` và `Transform`.

| Thuộc tính | Ý nghĩa |
| --- | --- |
| `child` | Widget con bên trong |
| `width`, `height` | Chiều rộng, chiều cao |
| `padding` | Khoảng cách bên trong |
| `margin` | Khoảng cách bên ngoài |
| `color` | Màu nền |
| `alignment` | Vị trí của `child` trong `Container` |
| `decoration` | Trang trí như viền, bo góc, đổ bóng, gradient |
| `constraints` | Giới hạn kích thước (min/max) |
| `transform` | Biến đổi như xoay, nghiêng, dịch chuyển |

<b>Mã nguồn tham khảo:</b> [5.dart](./5.dart)
</details>
<details>
<summary><b>V. Widget Text, assets, font chữ</b></summary>

- `maxLines`: Số dòng tối đa.
- `textAlign`: Căn chỉnh văn bản.
- `overflow: TextOverflow.ellipsis`: Hiện dấu `...` khi văn bản vượt quá số dòng cho phép.
- `TextScaler`: Tăng hoặc giảm kích thước chữ theo hệ số.
- `fontWeight`: Chỉnh kiểu chữ, ví dụ in đậm.
- `letterSpacing`: Khoảng cách giữa các chữ cái.
- `wordSpacing`: Khoảng cách giữa các từ.
- `fontFamily`: Khai báo font chữ.

Để sử dụng font tùy chỉnh, tải font từ [Google Fonts](https://fonts.google.com/) rồi khai báo trong `pubspec.yaml`.

<b>Mã nguồn tham khảo:</b> [6.dart](./6.dart)
</details>
<details>
<summary><b>VI. Widget RichText</b></summary>

<b>Mã nguồn tham khảo:</b> [7.dart](./7.dart)
</details>
<details>
<summary><b>VII. Đơn vị kích thước trong Flutter, MediaQuery và giao diện iOS</b></summary>

**1. Đơn vị kích thước trong Flutter**  
Flutter sử dụng logical pixel (lp), tương đương với dp trong Android và pt trong iOS: `1 lp = 1 dp`.

**2. MediaQuery**  
`MediaQuery` cung cấp thông tin về màn hình hoặc cửa sổ:

```dart
final size = MediaQuery.sizeOf(context); // Kích thước (width, height)
final padding = MediaQuery.paddingOf(context); // Vùng bị che: tai thỏ, home indicator
final keyboard = MediaQuery.viewInsetsOf(context); // Chiều cao bàn phím
final dpr = MediaQuery.devicePixelRatioOf(context);
final orientation = MediaQuery.orientationOf(context); // Hướng màn hình
```

**3. Giao diện iOS trong Flutter**  
Flutter cung cấp bộ widget `Cupertino` mang phong cách iOS.

<b>Mã nguồn tham khảo:</b> [8.dart](./8.dart)
</details>
<details>
<summary><b>VIII. Widget Button</b></summary>

<b>Mã nguồn tham khảo:</b> [9.dart](./9.dart)
</details>
<details>
<summary><b>IX. Widget Row, Column</b></summary>

<b>Mã nguồn tham khảo:</b> [10.dart](./10.dart)
</details>
<details>
<summary><b>X. Widget Expanded kết hợp Row và Column</b></summary>

Dùng `Expanded` để dàn đều các phần tử trong `Row` và `Column` theo `flex`.

<b>Mã nguồn tham khảo:</b> [11.dart](./11.dart)
</details>
<details>
<summary><b>XI. Widget Flexible, một mở rộng của Expanded</b></summary>

`Flexible` có thuộc tính quan trọng là `fit`, nhận hai giá trị: `FlexFit.loose` và `FlexFit.tight`.

| Đặc điểm | `FlexFit.loose` | `FlexFit.tight` |
| --- | --- | --- |
| Kích thước tối đa | Giới hạn trong phần tỉ lệ flex | Giới hạn trong phần tỉ lệ flex |
| Kích thước tối thiểu | Co lại vừa nội dung bên trong | Bị ép giãn bằng phần tỉ lệ flex |
| Khi nội dung ngắn | Để lại khoảng trống thừa bên cạnh | Kéo giãn nền/khung để lấp đầy phần được chia |
| Khi nội dung dài | Có thể xuống dòng hoặc bị cắt, tránh tràn `Overflow` | Có thể xuống dòng hoặc bị cắt, tránh tràn `Overflow` |

<b>Mã nguồn tham khảo:</b> [12.dart](./12.dart)
</details>
<details>
<summary><b>XII. Widget Stack</b></summary>

Trong `Stack`, widget ở cuối danh sách `children` được vẽ lên trên các widget đứng trước.

`Stack` cũng có thuộc tính `fit`. Khi `clipBehavior` là `Clip.none`, các widget trong `children` có thể vẽ ra ngoài vùng của `Stack`.

<b>Mã nguồn tham khảo:</b> [13.dart](./13.dart)
</details>
<details>
<summary><b>XIII. Widget TextField</b></summary>

Một số thuộc tính thường dùng:
- `onChanged`: Nhận biết sự thay đổi của giá trị nhập vào.
- `TextEditingController`: Đọc, thay đổi và quản lý nội dung trong ô nhập.
- `textInputAction`: Chọn hành động hiển thị trên bàn phím.
- `textCapitalization`: Chọn cách viết hoa ký tự.
- `style`: Tùy chỉnh kiểu chữ.
- `maxLines`, `maxLength`: Giới hạn số dòng và số ký tự.
- `obscureText`: Ẩn nội dung, thường dùng cho mật khẩu.
- `InputDecoration`: Tùy chỉnh nhãn, gợi ý, viền và biểu tượng.

<b>Mã nguồn tham khảo:</b> [14.dart](./14.dart)
</details>
<details>
<summary><b>XIV. Widget SingleChildScrollView</b></summary>

<b>Mã nguồn tham khảo:</b> [15.dart](./15.dart)
</details>
