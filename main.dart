import 'dart:io';
import 'dart:math';

void main() {
  print("=== Game Tebak Angka (Versi Final Game Logic) ===");
  print("Saya sudah memilih angka 1 sampai 100. Coba tebak!");

  Random random = Random();
  int target = random.nextInt(100) + 1;

  int tebakan;
  int percobaan = 0;

  while (true) {
    stdout.write("Masukkan tebakan Anda: ");
    tebakan = int.tryParse(stdin.readLineSync() ?? "") ?? -1;
    percobaan++;

    if (tebakan <= 0) {
      print("Input tidak valid, coba lagi!");
      continue;
    }

    if (tebakan == target) {
      print("🎉 Selamat! Angka benar adalah $target.");
      print("Anda menebak dalam $percobaan percobaan.");
      break;
    } else if (tebakan < target) {
      print("Terlalu kecil, coba lagi!");
    } else {
      print("Terlalu besar, coba lagi!");
    }
  }
}
