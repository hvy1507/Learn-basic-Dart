//Bải 4: Yêu cầu người dùng nhập vào một số, in ra lít số Fibonacci có độ dài bằng số đã nhập
import 'dart:io';

List<int> Fibonacci(int input) {
  List<int> fibList = [1, 1];

  for (var i = 0; i < input - 2; i++) {
    fibList.add(fibList[i] + fibList[i + 1]);
  }
  return fibList;
}

void main() {
  stdout.write("Moi ban nhap so luong so trong day Fibonacci: = ");
  String? stringNumberCanNull = stdin.readLineSync();
  String stringNumber = stringNumberCanNull ?? " 0 ";
  int input = int.tryParse(stringNumber) ?? 0;
  List<int> Fiblist = Fibonacci(input);
  print(Fiblist);
}
