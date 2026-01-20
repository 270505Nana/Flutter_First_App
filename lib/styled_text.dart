import 'package:flutter/material.dart';

class StyleText extends StatelessWidget {
  //wajib membuat construction, langkah 1 tulis nama classnya
  // StyleText

  // terus pakai kurung kurawal sama kurung biasa buat menerima argument key
  // StyleText({super.key})
  // nah super.key disini itu sebagai parameter, parameter yg diterima
  StyleText(this.textInput, {super.key});

  // setelah itu kita perlu menghubungkan antara parameter yg/value yg diterima itu disimpan didalam var yg kita buat. 
  // dengan nambahin this.nama var sebagai parameter. jadi untuk ngasih tau klo parameter ini tuh langsung di inisiasikan sebagai var yg ada didalam class ini 
  // nah disini kita perlu bikin variable/property didalam class, buat mendeklarasikan parameter/value yg diterima

  // kalau kita tambahin final jadi final String textInput
  // maka artinya dia cuman bisa nerima satu kali setelah itu dia ngga nerima kl ada perubahan lagi di value variablenya

  String textInput;

  @override
  // jadi kalau di flutter kita bisa extends atau inheri dari widget/function lain, disini pakai statelesswidget
  // kemudian karna kita extends stateless kita wajib membuat function namanya build dimana didalam build kita harus menambahkan widget
   //widget build harus return widget lain.
  Widget build(context) {
    // semua const dihapus karena disini ada perubahan value, karena menerima value/parameter
    return Text(
      textInput,
      // "hello world",
      // jadi klw kita running dan pakai widget ini dihalaman lain kan bakalan langsung textnya "hello world"
      // sedangkan yang di mau adalah widget yg flexible dan reusable, makanya kita ubah agar class STYLEDTEXT ini menerima parameter
      style: TextStyle(color: Colors.white, fontSize: 28),
    );
  }
  // terus kalau di flutter/dart didepan nama fungsi itu menggambarkan return value type dari function kita
}
