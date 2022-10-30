//Bai 5: Viết chương trình sinh ra mảng 20 số nguyên ngẫu nhiên từ 1 - 10, sau đó loại bỏ các phần tử bị lặp
import 'dart:math';
import 'dart:io';

void main() {
  final random = Random();
  List<int> randomList = List.generate(10, (_) => random.nextInt(10));
  stdout.write("List truoc khi loai bo phan tu trung lap :  $randomList");
  stdout.write("\n");
  stdout
      .write("List sau khi loai bo phan tu trung lap : ${randomList.toSet()}");
}
