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
    stdout.write("Masukkan tebakan Anda (1-100): ");
    String input = stdin.readLineSync() ?? "";
    
    // Validasi input
    if (input.isEmpty) {
      print("Input tidak boleh kosong, coba lagi!");
      continue;
    }
    
    tebakan = int.tryParse(input) ?? -1;
    
    if (tebakan < 1 || tebakan > 100) {
      print("Masukkan angka antara 1 sampai 100!");
      continue;
    }
    
    percobaan++;

    if (tebakan == target) {
      print("\n🎉 Selamat! Angka benar adalah $target.");
      print("💡 Anda menebak dalam $percobaan percobaan.");
      
      // Feedback berdasarkan jumlah percobaan
      if (percobaan <= 5) {
        print("⭐ Hebat! Tebakan yang sangat cepat!");
      } else if (percobaan <= 10) {
        print("Bagus! Hasil yang cukup baik!");
      } else {
        print("Terus berlatih ya!");
      }
      break;
    } else if (tebakan < target) {
      print("Terlalu kecil, coba lagi!");
    } else {
      print("Terlalu besar, coba lagi!");
    }
    
    // Beri petunjuk setelah beberapa percobaan
    if (percobaan == 5) {
      int selisih = (target - tebakan).abs();
      if (selisih <= 10) {
        print("💡 Tips: Anda sudah sangat dekat!");
      } else if (selisih <= 25) {
        print("💡 Tips: Anda cukup dekat dengan angka!");
      }
    }
  }
}