//Bài 1: Sinh một list số gồm 20 số nguyên Random từ 0-100, viết hàm tính tổng các số nguyên tố trong dãy.
import 'dart:math';

// Ham tinh tong cua List
int sumOfList(List<int> a) {
  int sum = 0;
  for (int i = 0; i < a.length; i++) {
    sum += a[i];
  }
  return sum;
}

// Ham check so nguyen to
bool checkPrime(int a) {
  for (var i = 2; i <= sqrt(a); i++) {
    if (a <= 1) {
      return false;
    }
    if (a % i == 0) {
      return false;
    }
  }
  return true;
}

void main() {
  final random = Random();
  List<int> randomList = List.generate(20, (_) => random.nextInt(100) + 1);
  print("randomList la : $randomList ");
  List<int> primeList = [];
  for (int i = 0; i < randomList.length; i++) {
    if (checkPrime(randomList[i])) {
      primeList.add(randomList[i]);
    }
  }
  print("List so nguyen to la : $primeList ");
  print("Tong cua List so nguyen to la:  ${sumOfList(primeList)}");
}
