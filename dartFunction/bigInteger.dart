import 'dart:io';
import 'dart:math';

// Lay input kieu String
List<int> takeInput() {
  stdout.write("Nhap vao mot so nguyen rat lon:\n");
  String? stringCanNull = stdin.readLineSync();
  String stringNumber = stringCanNull ?? "0";
  List<int> inputList = [];
  stringNumber.split("").forEach((everyDigit) {
    inputList.add(int.tryParse(everyDigit) ?? 0);
  });
  return inputList;
}

// Add
List<int> add({required List<int> a, required List<int> b}) {
  List<int> reversedA = a.reversed.toList();
  List<int> reversedB = b.reversed.toList();
  List<int> result = [];

  int carry = 0;
  for (int i = 0; i < reversedA.length; i++) {
    int currentUnitValue = reversedA[i] + reversedB[i] + carry;

    if (currentUnitValue >= 10) {
      result.add(currentUnitValue - 10);
      carry = 1;
    } else {
      result.add(currentUnitValue);
      carry = 0;
    }
  }
  if (carry == 1) result.add(carry);

  return result.reversed.toList();
}

// Subtract
List<int> subtract({required List<int> a, required List<int> b}) {
  List<int> reversedA = a.reversed.toList();
  List<int> reversedB = b.reversed.toList();
  List<int> result = [];

  int carry = 0;
  for (int i = 0; i < reversedA.length; i++) {
    int currentUnitValue = reversedA[i] - reversedB[i] - carry;

    if (currentUnitValue < 0) {
      result.add(currentUnitValue + 10);
      carry = 1;
    } else {
      result.add(currentUnitValue);
      carry = 0;
    }
  }
  if (carry == 1) result.add(carry);

  return result.reversed.toList();
}

// Multiply
List<int> multiply({required List<int> a, required List<int> b}) {
  List<int> reversedA = a.reversed.toList();
  List<int> reversedB = b.reversed.toList();
  List<int> result =
      List.generate(reversedA.length + reversedB.length, (index) => 0);
  for (int i = 0; i < reversedA.length; ++i) {
    for (int j = 0; j < reversedB.length; ++j) {
      result[i + j] += (reversedA[i] * reversedB[j]);
      result[i + j + 1] += (result[i + j] ~/ 10);
      result[i + j] %= 10;
    }
  }
  return result.reversed.toList();
}

// Ham xoa so 0 o dau
List<int> removeZeros(List<int> a) {
  while (a.length > 1 && a.first == 0) {
    a.remove(0);
  }
  return a;
}

void main() {
  List<int> num1List = takeInput();
  List<int> num2List = takeInput();

// Them so 0 vao List co do dai nho hon

  if (num1List.length > num2List.length) {
    List<int> zeroList2 = List.filled(num1List.length - num2List.length, 0);
    num2List.insertAll(0, zeroList2);
  } else {
    List<int> zeroList1 = List.filled(num2List.length - num1List.length, 0);
    num1List.insertAll(0, zeroList1);
  }

  List<int> addResult = add(a: num1List, b: num2List);
  List<int> kqcong = removeZeros(addResult);
  stdout.writeln("Ket qua cua phep cong la : ${kqcong.join()}");

  List<int> subtractResult = subtract(a: num1List, b: num2List);
  List<int> kqtru = removeZeros(subtractResult);
  stdout.writeln("Ket qua cua phep tru la: ${kqtru.join()}");

  List<int> multiplyResult = multiply(a: num1List, b: num2List);
  List<int> kqnhan = removeZeros(multiplyResult);
  stdout.writeln("Ket qua cua phep nhan la: ${kqnhan.join()}");
}
