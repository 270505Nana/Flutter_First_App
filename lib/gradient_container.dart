import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';

//belajar pembuatan variables
var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;
// kalau pakai var kita bisa reassign valuenya, makanya bakal error kalau kita kasih const didalam parent widget kita

// nah, kita bisa pisah classnya, biar lebih tertata rapihh
class GradientContainer extends StatelessWidget {
  // adding a construction function
  //nameclass(){}
  const GradientContainer({super.key});

  @override
  // jadi kalau di flutter kita bisa extends atau inheri dari widget/function lain, disini pakai statelesswidget
  // kemudian karna kita extends stateless kita wajib membuat function namanya build dimana didalam build kita harus menambahkan widget
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 26, 2, 80),
            Color.fromARGB(255, 45, 7, 98),
          ],
          //kita bisa setting gradientnya mau dari mana, misal dari kiri ke kanan
          // menggunakan begin
          begin: startAlignment,
          end: endAlignment,
          // control + space : munculin rekomendasi kodingan
        ),
      ),

      child: const Center(child: StyleText()),
    );
  } //build harus return widget

  // terus kalau di flutter/dart didepan nama fungsi itu menggambarkan return value type dari function kita
}
