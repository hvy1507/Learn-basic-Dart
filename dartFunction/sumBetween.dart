//Bài 2: Viết hàm nhập vào hai số nguyên dương a và b. Tính tổng tất cả các chữ số nguyên dương nằm giữa a và b.
import 'dart:io';

int takeInput() {
  String? stringNumberCanNull = stdin.readLineSync();
  String stringNumber = stringNumberCanNull ?? " 0 ";
  int input = int.tryParse(stringNumber) ?? 0;
  return input;
}

void main() {
  print("Moi ban nhap so thu nhat: ");
  int smaller = takeInput();
  print("Moi ban nhap so thu hai:");
  int bigger = takeInput();
  if (smaller > bigger) {
    var temp = smaller;
    smaller = bigger;
    bigger = temp;
  }
  int sum = 0;
  for (int i = smaller + 1; i < bigger; i++) {
    sum += i;
  }
  print(
      "Tong cac so nguyen duong trong khoang tu $smaller den $bigger la $sum");
}
