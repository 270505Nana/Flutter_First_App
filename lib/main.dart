//material dart harus di import, soalnya kita butuh pakai function runApp.
import 'package:flutter/material.dart';

// import classnya
import 'package:first_app/gradient_container.dart';

void main() {
  //function body
  //runApp is a function, function untuk meng execute function lain
  //didalam runApp kita harus pakai setidaknya 2 basic widget, agar dia engga error
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer.purple(),
        ),
      ),
  );
}

//kita bisa ngebuat widget kita sendiri, semisal nih kita punya desain navbar. nah itu bisa kita pisah sendiri, biar nnti reusable
// di beberapa screen, jdi kita tinggal panggil ajah
//langkah-langkah
// 1. buat class, nama bebas tapi harus kapital
// kita bisa pisah kelasnya di file yang berbeda
