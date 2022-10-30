class Developer {
  final String name;
  final String gender;
  final int numberOfLanguage;
  final double salary;
  final double bonus;
  Developer(
      this.name, this.gender, this.numberOfLanguage, this.salary, this.bonus);
  void display() {
    print("$name , $gender , $numberOfLanguage , $salary , $bonus ");
  }

  double income() {
    return salary + bonus;
  }
}

void main() {
  Developer dev = Developer("Duong Quoc Huy ", "Nam", 10, 100000000, 5000000);
  dev.display();
  print("Tong thu nhap cua developer la : ${dev.income()}");
}
