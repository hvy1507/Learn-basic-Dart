//Bài 2: Cho list
//a = [5, 10, 15, 20, 25]
//Tạo một list mới chứa phần tử đầu và cuối của mảng a.
void main() {
  List<int> a = [5, 10, 15, 20, 25, 22, 55];
  List<int> b = [];
  b.add(a.first);
  b.add(a.last);
  print("List moi la : $b");
}
