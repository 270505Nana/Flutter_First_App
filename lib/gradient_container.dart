import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';

//belajar pembuatan variables
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;
// kalau pakai var kita bisa reassign valuenya, makanya parent widgetnya ngga boleh const

class GradientContainer extends StatelessWidget {
  // adding a construction function, structure : nameclass(){}
  // this.colors -> sebagai input (parameter yang diterima dan dikirim dari tempat class ini dipakai)
  const GradientContainer(this.color1, this.color2, {super.key});

  // penulisannya bisa gini
  // const GradientContainer({super.key, required this.colors});
  // karena color itu dia list karena gradient, maka varnya juga harus menerima list
  // meskipun dia tipe variablenya final, tapi karena dia jenisnya list dia tetep bisa berubah meski final
  // final List<Color>colors;

  // construction 2, setting value
  // nama class.nama var
  // ini semisal kita mau setting langsung, jadi nnti ada dua pilihan bisa berdasarkan inputan di main, atau kalau di main ngga ada inputan bisa pakai yg default disini aja
  const GradientContainer.purple({super.key})
    : color1 = Colors.deepPurple,
      color2 = Colors.indigo;
  //coba versi nggak dibikin list
  final Color color1;
  final Color color2;

  @override
  // jadi kalau di flutter kita bisa extends atau inheri dari widget/function lain, disini pakai statelesswidget
  // kemudian karna kita extends stateless kita wajib membuat function namanya build dimana didalam build kita harus menambahkan widget
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment, //setting gradient begin -> end
          end: endAlignment,
        ),
      ),

      // sekarang udah bisa ubah textnya, sebagai parameter
      // child: Center(child: StyleText("Hello nana")),
      child: Center(
        child: DiceRoller(),
      )
    );
  } //build harus return widget
  // terus kalau di flutter/dart didepan nama fungsi itu menggambarkan return value type dari function kita
}
