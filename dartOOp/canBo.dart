import 'dart:io';

enum Gender {
  male,
  female,
  other,
}

class CanBo {
  String? fullname, address;
  int? age;
  Gender? gender;

  input() {
    stdout.writeln("Nhap vao ten can bo");
    fullname = stdin.readLineSync() ?? "";
    stdout.writeln("Nhap vao dia chi");
    address = stdin.readLineSync() ?? "";
    stdout.writeln("Nhap vao so tuoi");
    age = int.tryParse(stdin.readLineSync() ?? "") ?? 0;
    stdout.writeln("Nhap vao gioi tinh: 0 = nam, 1 = nu, 2 = khac");
    int genderChoice = int.tryParse(stdin.readLineSync() ?? "") ?? 0;
    gender = genderChoice == 0
        ? Gender.male
        : (genderChoice == 1 ? Gender.female : Gender.other);
  }
}

class CongNhan extends CanBo {
  int? level;

  @override
  CongNhan input() {
    super.input();
    stdout.writeln("Nhap vao level");
    level = int.tryParse(stdin.readLineSync() ?? "") ?? 0;
    return this;
  }
}

class KySu extends CanBo {
  String? major;

  @override
  KySu input() {
    super.input();
    stdout.writeln("Nhap vao chuyen nganh ky su");
    major = stdin.readLineSync() ?? "";
    return this;
  }
}

class NhanVien extends CanBo {
  String? work;

  @override
  NhanVien input() {
    super.input();
    stdout.writeln("Nhap vao cong viec nhan vien");
    work = stdin.readLineSync() ?? "";
    return this;
  }
}

class QLCB {
  List<CanBo> listCanBo = [];

  addCanBo() {
    stdout.writeln("Nhap vao kieu can bo:");
    stdout.writeln("1.Cong nhan \n2.Ky su \n3.Nhan vien");
    String option = stdin.readLineSync() ?? "1";
    switch (option) {
      case "1":
        final newWorker = CongNhan().input();
        listCanBo.add(newWorker);
        break;
      case "2":
        final newEngineer = KySu().input();
        listCanBo.add(newEngineer);
        break;
      case "3":
      default:
        final newEmployee = NhanVien().input();
        listCanBo.add(newEmployee);
        break;
    }
    final canBoVuaNhap = listCanBo[listCanBo.length - 1];
    String additionalInformation = "";

    if (canBoVuaNhap is CongNhan) {
      additionalInformation = "Cong nhan level ${canBoVuaNhap.level}";
    }
    if (canBoVuaNhap is KySu) {
      additionalInformation = "Ky Su chuyen nganh ${canBoVuaNhap.major ?? ""}";
    }
    if (canBoVuaNhap is NhanVien) {
      additionalInformation = "Nhan vien quen lam ${canBoVuaNhap.work ?? ""}";
    }

    stdout.writeln(
        "Them can bo thanh cong: ${canBoVuaNhap.fullname} ${canBoVuaNhap.age} ${canBoVuaNhap.gender} ${canBoVuaNhap.address} $additionalInformation");
  }
}

void main() {
  final qlcb = QLCB();
  qlcb.addCanBo();
}
