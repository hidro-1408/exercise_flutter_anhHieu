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
  // ignore: unused_local_variable
  List<Map<String, int>> tiers = [
    {"limit": 50, "rate": 1678},
    {"limit": 50, "rate": 1734},
    {"limit": 100, "rate": 2014},
    {"limit": 100, "rate": 2563},
    {"limit": double.maxFinite.toInt(), "rate": 2834},
  ];
  final rs = electricBill(200, tiers);
  print(rs);
}

int electricBill(int kwh, List<Map<String, int>> tiers) {
  int bill = 0;
  int remaningKwh = kwh;
  for (var tier in tiers) {
    if (remaningKwh < 0) break;
    final limit = tier["limit"] ?? 0;
    final rate = tier["rate"] ?? 0;
    final currentKwh = remaningKwh > limit ? limit : remaningKwh;
    bill += currentKwh * rate;

    remaningKwh -= currentKwh;
  }

  return bill;
}
