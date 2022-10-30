//Bài 3: Sinh một số ngẫu nhiên từ 1 đến 100 
//Sau đó yêu cầu người dùng nhập vào một số, trả về số đó lớn hơn, nhỏ hơn hay bằng số đã sinh ra
import 'dart:io';
import 'dart:math';

void main() {
  int randomNumber = Random().nextInt(100);
  while (true) {
    stdout.write("Moi ban nhap so bat ky : = ");
    String? stringNumberCanNull = stdin.readLineSync();
    String stringNumber = stringNumberCanNull ?? " 0 ";
    int input = int.tryParse(stringNumber) ?? 0;
    if (input >= 100) {
      stdout.write("So qua lon , vui long nhap lai");
      stdout.write("\n");
      continue;
    }
    if (input > randomNumber) {
      stdout.write("So ban nhap lon hon");
      stdout.write("\n");
    } else if (input < randomNumber) {
      stdout.write("So ban nhap nho hon");
      stdout.write("\n");
    } else if (input == randomNumber) {
      stdout.write("So ban nhap bang randomNumber");
      stdout.write("\n");
    }
  }
}
