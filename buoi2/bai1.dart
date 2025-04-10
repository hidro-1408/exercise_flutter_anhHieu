/*
Bài 1: Viết hàm để tính tiền điện hàng tháng dựa trên số kWh điện tiêu thụ theo 
cách tính lũy kế sau:
● Giá cho 50 kWh đầu tiên là 1.678 đồng/kWh.
● Giá cho 50 kWh tiếp theo là 1.734 đồng/kWh.
● Giá cho 100 kWh tiếp theo là 2.014 đồng/kWh.
● Giá cho 100 kWh tiếp theo nữa là 2.536 đồng/kWh.
● Giá cho các kWh tiếp theo là 2.834 đồng/kWh.
*/

void main(List<String> args) {
  int kwh = 350; // Số kWh tiêu thụ
  double bill = electricBill(kwh);
  bill = double.parse(
    bill.toStringAsFixed(2),
  ); // Làm tròn đến 2 chữ số thập phân
  print("Số tiền điện phải trả là: $bill đồng");
}

double electricBill(int n) {
  if (n < 50) {
    return n * 1.678;
  } else if (n < 100) {
    return 50 * 1.678 + (n - 50) * 1.734;
  } else if (n < 200) {
    return 50 * 1.678 + 50 * 1.734 + (n - 100) * 2.014;
  } else if (n < 300) {
    return 50 * 1.678 + 50 * 1.734 + 100 * 2.014 + (n - 200) * 2.536;
  } else {
    return 50 * 1.678 +
        50 * 1.734 +
        100 * 2.014 +
        100 * 2.536 +
        (n - 300) * 2.834;
  }
}
