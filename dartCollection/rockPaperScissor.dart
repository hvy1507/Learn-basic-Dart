import 'dart:io';
import 'dart:math';

void main() {
  final random = Random();

  Map<String, String> rules = {
    "keo": "bao",
    "bao": "bua",
    "bua": "keo",
  };
  // Lua chon keo bua bao
  List<String> options = ["bua", "bao", "keo"];

  //Logic game
  while (true) {
    String compChoice = options[random.nextInt(options.length)];
    stdout.write("Nhap lua chon Keo , Bua , Bao : ");
    String? userChoice = stdin.readLineSync();
    if (!options.contains(userChoice)) {
      print("Type sai , vui long type dung");
      continue;
    } else if (compChoice == userChoice) {
      print("Ket qua hoa!");
    } else if (rules[compChoice] == userChoice) {
      print("May tinh win: $compChoice vs $userChoice");
    } else if (rules[userChoice] == compChoice) {
      print("Ban thang: $userChoice vs $compChoice");
    }
  }
}
