import 'dart:io';
import 'dart:math';

void main() {
  print("=== Game Tebak Angka (Versi Random Number) ===");

  Random random = Random();
  int target = random.nextInt(100) + 1; // angka random 1–100

  stdout.write("Masukkan tebakan Anda: ");
  int? tebakan = int.tryParse(stdin.readLineSync() ?? "");

  if (tebakan == null) {
    print("Input tidak valid!");
  } else {
    print("Anda menebak: $tebakan, angka target: $target");
  }
}
