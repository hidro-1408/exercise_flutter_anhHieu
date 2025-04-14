// Bài 2: Viết hàm giải phương trình bậc 2 ax^2 + bx + c = 0 với a, b, c là các tham số đầu vào.
import 'dart:math';

void main(List<String> args) {
  int a = 1, b = -3, c = 2;
  solveEquation(a, b, c);
}

void solveEquation(int a, int b, int c) {
  if (a == 0 && b == 0 && c == 0) {
    print("phuong trinh co vo so nghiem");
  } else if (a == 0 && b == 0) {
    print("phuong trinh co 1 nghiem x = ${-c / b}");
  } else {
    int delta = b * b - 4 * a * c;
    if (delta < 0) {
      print("phuong trinh vo nghiem");
    } else if (delta == 0) {
      print("phuong trinh co 1 nghiem x = ${-b / (2 * a)}");
    } else {
      double x1 = (-b + sqrt(delta)) / (2 * a);
      double x2 = (-b - sqrt(delta)) / (2 * a);
      print("phuong trinh co 2 nghiem phan biet x1 = $x1, x2 = $x2");
    }
  }
}
