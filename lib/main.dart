import 'package:flutter/material.dart';
//material dart harus di import, soalnya kita butuh pakai function runApp.

void main() {
  //function body
  //runApp is a function, function untuk meng execute function lain

  //didalam runApp kita harus pakai setidaknya 2 basic widget, agar dia engga error
  runApp(MaterialApp(home: Scaffold(body: GradientContainer())));
}

//kita bisa ngebuat widget kita sendiri, semisal nih kita punya desain navbar. nah itu bisa kita pisah sendiri, biar nnti reusable
// di beberapa screen, jdi kita tinggal panggil ajah

//langkah-langkah

// 1. buat class, nama bebas tapi harus kapital
class GradientContainer extends StatelessWidget {
  // adding a construction function
  //nameclass(){}
  const GradientContainer({super.key});

  @override
  // jadi kalau di flutter kita bisa extends atau inheri dari widget/function lain, disini pakai statelesswidget
  // kemudian karna kita extends stateless kita wajib membuat function namanya build dimana didalam build kita harus menambahkan widget
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 26, 2, 80),
            Color.fromARGB(255, 45, 7, 98),
          ],
          //kita bisa setting gradientnya mau dari mana, misal dari kiri ke kanan
          // menggunakan begin
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          // control + space : munculin rekomendasi kodingan
        ),
      ),

      child: const Center(
        child: Text(
          "Hello nana",
          style: TextStyle(color: Colors.white, fontSize: 28),
        ),
      ),
    );
  } //build harus return widget

  // terus kalau di flutter/dart didepan nama fungsi itu menggambarkan return value type dari function kita
}
