//Bài 3: Sinh một list số gồm 20 số nguyên Random từ 0-100, viết hàm trả về số nguyên lớn nhất trong dãy. 
import 'dart:math';

int maxOfList(List<int> a) {
  int max = a[0];
  for (var element in a) {
    if (element > max) {
      max = element;
    }
  }
  return max;
}

void main() {
  final random = Random();
  List<int> randomList = List.generate(20, (_) => random.nextInt(100) + 1);
  print("List dc random la : $randomList");
  print("Max cua List la : ${maxOfList(randomList)}");
}
