import 'dart:io';

main() {
    var user = User();
    var menu = Menu();
    print('Welcome');
    stdout.write('Masukkan Username  : ');
    var username = stdin.readLineSync();
    stdout.write('Masukkan Password  : ');
    var password = stdin.readLineSync();

    var successlogin = user.truelogin(username,password);
    if (successlogin) {
        print("Success Login !");
        var order = menu.showmenu();
        print("Your order: $order");
    }
}

class User {
    var username;
    var password;
    var nama = 'Budi Sulistyo';
    bool truelogin(username, password) {
        if (username == 'budi' && password == '123') {
            print('Hello $nama !');
            return true;
        } else {
            print('Username / Password Salah !');
            return false;
        }
    }
}

class Menu {
    String? showmenu() {
    print('===== Kedai Ayam Pak Mail =====');
    print('Pilihan Menu Makanan :');
    print('1. Ayam Geprek ( Only ) Rp 15.000 ');
    print('2. Ayam Geprek + Nasi Rp 17.500 ');
    print('3. Ayam Bakar ( Only ) Rp 16.500 ');
    print('4. Ayam Bakar + Nasi Rp 18.500 ');
    print('5. Mie Ayam Rp 10.500 ');
    print('6. Ayam Pop Rp 11.000 ');
    print('7. Es Teh Rp 3.500 ');
    print('8. Teh Hangat Rp 3.000 ');
    print('9. Es Jeruk Rp 4.000 ');
    print('10. Jeruk Hangat Rp 3.500 ');
    stdout.write('Pilih pesanan anda ( pisah dengan simbol koma untuk pesanan lebih dari satu ) : ');
    var input = stdin.readLineSync();
    var orders = input!.split(',').map(int.parse).toList();
    var total = 0;
    var orderList = <String>[];
    for (var order in orders) {
      switch (order) {
        case 1:
          total += 15000;
          orderList.add('Ayam Geprek (Only)');
          break;
        case 2:
          total += 17500;
          orderList.add('Ayam Geprek + Nasi');
          break;
        case 3:
          total += 16500;
          orderList.add('Ayam Bakar (Only)');
          break;
        case 4:
          total += 18500;
          orderList.add('Ayam Bakar + Nasi');
          break;
        case 5:
          total += 10500;
          orderList.add('Mie Ayam');
          break;
        case 6:
          total += 11000;
          orderList.add('Ayam Pop');
          break;
        case 7:
          total += 3500;
          orderList.add('Es Teh');
          break;
        case 8:
          total += 3000;
          orderList.add('Teh Hangat');
          break;
        case 9:
          total += 4000;
          orderList.add('Es Jeruk');
          break;
        case 10:
          total += 3500;
          orderList.add('Jeruk Hangat');
          break;
        default:
          print('Pesanan Invalid ! ');
          break;
      }
    }
    var orderText = orderList.join(', ');
    print('Pesanan : $orderText');
    return 'Rp $total';
    }
}
