//Bài 3: Viết hàm tính ước chung lớn nhất (UCLN) và bội chung nhỏ nhất (BCNN) của 2 số
void main(List<String> args) {
  int a = 52;
  int b = 72;
  print("ước chung lớn nhất $a và $b: ${calcGcd(a, b)}");
  print("bội chung nhỏ nhất $a và $b: ${calcLcm(a, b)}");
}

int calcGcd(int a, int b) {
  int n = a > b ? a : b;
  int gcd = 1;
  for (var i = n; i >= 1; i--) {
    if (a % i == 0 && b % i == 0) {
      gcd = i;
      break;
    }
  }
  return gcd;
}

int calcLcm(int a, int b) {
  int lcm = 1;
  lcm = (a * b) ~/ calcGcd(a, b);
  return lcm;
}
