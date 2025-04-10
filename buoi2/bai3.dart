//Bài 3: Viết hàm tính ước chung lớn nhất (UCLN) và bội chung nhỏ nhất (BCNN) của 2 số
void main(List<String> args) {
  gcdAnhLcm(56, 98);
  gcdAnhLcm(15, 25);
  gcdAnhLcm(7, 21);
}

void gcdAnhLcm(int a, int b) {
  int n = a > b ? a : b;
  int gcd = 1;
  int lcm = 1;
  for (int i = n; i >= 1; i--) {
    if (a % i == 0 && b % i == 0) {
      gcd = i;
      break;
    }
  }
  lcm = (a * b) ~/ gcd;
  print("UCLN cua $a va $b la: $gcd");
  print("BCNN cua $a va $b la: $lcm");
}
