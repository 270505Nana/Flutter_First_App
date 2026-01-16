import 'package:flutter/material.dart';
//material dart harus di import, soalnya kita butuh pakai function runApp.

void main() {
  //function body
  //runApp is a function, function untuk meng execute function lain

  //didalam runApp kita harus pakai setidaknya 2 basic widget, agar dia engga error
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
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
            child: Text("Hello nana", style: TextStyle(color: Colors.white, fontSize: 28)),
          ),
        ),
      ),
    ),
  );
}
