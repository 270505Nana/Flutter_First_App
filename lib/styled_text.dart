import 'package:flutter/material.dart';

class StyleText extends StatelessWidget {
  //wajib membuat construction, langkah 1 tulis nama classnya
  // StyleText

  // terus pakai kurung kurawal sama kurung biasa buat menerima argument key
  // StyleText({super.key})
  const StyleText({super.key});
  @override
  // jadi kalau di flutter kita bisa extends atau inheri dari widget/function lain, disini pakai statelesswidget
  // kemudian karna kita extends stateless kita wajib membuat function namanya build dimana didalam build kita harus menambahkan widget
  Widget build(context) {
    return const Text(
      "Hello nana",
      style: TextStyle(color: Colors.white, fontSize: 28),
    );
  } //build harus return widget

  // terus kalau di flutter/dart didepan nama fungsi itu menggambarkan return value type dari function kita
}
