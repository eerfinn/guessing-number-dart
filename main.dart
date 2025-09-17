import 'dart:io';

void main() {
  print("=== Game Tebak Angka (Versi Input Feature) ===");

  stdout.write("Masukkan tebakan Anda: ");
  int? tebakan = int.tryParse(stdin.readLineSync() ?? "");

  if (tebakan == null) {
    print("Input tidak valid!");
  } else {
    print("Anda menebak: $tebakan");
  }
}