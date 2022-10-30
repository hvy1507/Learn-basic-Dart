//Bài 1: Yêu cầu người dùng nhập vào một số, xác định số đó có phải số nguyên tố hay không.
import 'dart:io';

void main() {
  while (true) {
    stdout.write("Moi ban nhap so bat ky : = ");
    String? stringNumberCanNull = stdin.readLineSync();
    String stringNumber = stringNumberCanNull ?? " 0 ";
    int input = int.tryParse(stringNumber) ?? 0;
    int count = 0;
    for (int i = 1; i <= input; i++) {
      if (input % i == 0) {
        count++;
      }
    }
    stdout.write(count > 2 || input < 2
        ? " $input khong phai la so nguyen to "
        : " $input la so nguyen to ");
    stdout.write("\n");
  }
}
