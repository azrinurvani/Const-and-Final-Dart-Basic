import 'dart:io';

import 'package:const_and_final_dart_basic/const_and_final_dart_basic.dart' as const_and_final_dart_basic;

const num pi = 3.14;
final firstName = stdin.readLineSync();
final lastName = stdin.readLineSync();
void main(List<String> arguments) {
  var radius = 7;
  print('Luas lingkaran dengan radius $radius = ${calculateCircleArea(radius)}');
  print('Hello $firstName $lastName');
}

num calculateCircleArea(num radius) => pi * radius * radius;


/*
* NOTE
* Perbedaan final dengan const adalah =>
* Variabel yang dideklarasikan sebagai const bersifat compile-time constants, artinya nilai tersebut harus sudah diketahui sebelum program dijalankan.
* Sedangkan final, nilainya masih bisa diinisialisasi ketika runtime atau ketika aplikasi berjalan.
*
* Jadi kapan kita harus menggunakan const dan kapan final?
* Kapan pun memungkinkan, selalu gunakan const karena compile-time constant memiliki performa yang lebih baik dan menggunakan memori lebih sedikit.
* Jika tidak memungkinkan untuk menggunakan const, gunakan final untuk melindungi variabel agar tidak berubah.
* */