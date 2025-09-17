import 'dart:io';
import 'dart:math';

void main() {
  // Header yang lebih menarik
  print("╔══════════════════════════════════════════════════╗");
  print("║             🎯  GAME TEBAK ANGKA 🎯              ║");
  print("║                 Versi Final Game                 ║");
  print("╚══════════════════════════════════════════════════╝");
  print("");
  print("🌟 Saya sudah memilih sebuah angka antara 1 sampai 100");
  print("   Coba tebak angka rahasia saya!");
  print("");

  Random random = Random();
  int target = random.nextInt(100) + 1;

  int tebakan;
  int percobaan = 0;

  while (true) {
    print("┌──────────────────────────────────────────────────");
    stdout.write("│ Masukkan tebakan Anda (1-100): ");
    String input = stdin.readLineSync()?.trim() ?? "";
    
    // Validasi input
    if (input.isEmpty) {
      print("│ Input tidak boleh kosong, coba lagi!");
      print("└──────────────────────────────────────────────────");
      continue;
    }
    
    tebakan = int.tryParse(input) ?? -1;
    
    if (tebakan < 1 || tebakan > 100) {
      print("│ Harap masukkan angka antara 1 sampai 100!");
      print("└──────────────────────────────────────────────────");
      continue;
    }
    
    percobaan++;

    print("│");
    
    if (tebakan == target) {
      print("│ ╔══════════════════════════════════════════════════╗");
      print("│ ║                 🎉  SELAMAT! 🎉                  ║");
      print("│ ║                   ANGKA BENAR                    ║");
      print("│ ╚══════════════════════════════════════════════════╝");
      print("│");
      print("│ Angka target: $target");
      print("│ Jumlah percobaan: $percobaan");
      print("│");
      
      // Feedback berdasarkan jumlah percobaan
      if (percobaan <= 3) {
        print("│ ⭐ LUAR BIASA! Anda jenius!");
      } else if (percobaan <= 6) {
        print("│ 👍 Hebat! Tebakan yang cepat!");
      } else if (percobaan <= 10) {
        print("│ 👌 Bagus! Hasil yang solid!");
      } else if (percobaan <= 15) {
        print("│ 💪 Terus semangat! Sudah cukup baik!");
      } else {
        print("│ 😊 Terus berlatih, kamu pasti bisa!");
      }
      print("└──────────────────────────────────────────────────");
      break;
    } else if (tebakan < target) {
      print("│ Terlalu kecil! Coba angka yang lebih besar");
    } else {
      print("│ Terlalu besar! Coba angka yang lebih kecil");
    }
    
    // Beri petunjuk setelah beberapa percobaan
    if (percobaan == 3) {
      int selisih = (target - tebakan).abs();
      if (selisih <= 5) {
        print("│ 💡 Tips: Anda SANGAT DEKAT! Hampir dapat!");
      } else if (selisih <= 15) {
        print("│ 💡 Tips: Anda cukup dekat, tetap fokus!");
      }
    }
    
    if (percobaan == 6) {
      print("| Wah sudah 6 kali coba, nih ada petunjuk tambahan:");
      print("│💡Hint: Angka berada di sekitar ${max(1, target-10)}-${min(100, target+10)}");
    }
    
    print("└──────────────────────────────────────────────────");
  }
  
  // Footer
  print("");
  print("╔══════════════════════════════════════════════════╗");
  print("║           Terima kasih telah bermain! 👋         ║");
  print("║          Sampai jumpa di game berikutnya!        ║");
  print("╚══════════════════════════════════════════════════╝");
}