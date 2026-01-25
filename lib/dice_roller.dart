import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();
//first class, and statefulwidget always work with 2 clasess or more
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  //1. override
  @override
  //2. State, mengatur state apa yg mau dikelola, tentunya class name
  State<DiceRoller> createState() {
    //3. harus return
    return _DiceRollerState();
    //4. then calling a _DiceRollserState as a function, so DiceRoller class will executed _DiceRollerState
  }
}

//second class

//start with _ (means private) then ended with
class _DiceRollerState extends State<DiceRoller> {

  var currentDiceRoll = 2;

  // membuat method untuk aksi dari button textnya
  // void karena dia tidak mereturn apapun
  void rollDice() {
    // kalau cuma gini dia ngga akan re execute ketika kita klik buttonnya, jadi klo mau nilainya berubah jadi dice yg gambar 4 tuh kita perlu reload gitu loh
    // dia ngga otomatis berubah ketika kita klik buttonnya.
    // makanya kita perlu tambahin setState function
    setState(() {
      // package untuk random dicenya, provide by dart:math
      // max valuenya 10
      currentDiceRoll = randomizer.nextInt(6) + 1;
      //didalamnya kita masukin apa yg mau kita ubah gitu simplenya
      // jadi flutter akan reexecuted code, biar gambarnya berubah
    });
  }

  // 1. override
  @override
  // 2. Widget build
  Widget build(context) {
    return Column(
      // mengatur content children biar berada ditengan
      // jadi kalo column itu dia mengambil semua space kosong secara vertical, makanya kita perlu set
      mainAxisSize: MainAxisSize
          .min, //kalo max dia akan mengambil sebanyak" space secara vertikal
      children: [
        // gunakan asset ketika image berasal dari local
        // bagian image asset ini yang ada perubahan data, jadi kita bisa pisah aja dia menjadi stateful widget
        Image.asset('assets/images/dice-$currentDiceRoll.png', width: 200),
        // untuk menambahkan jarak antar widget tpi bukan menggunakan padding
        const SizedBox(height: 20),
        // onPressed : digunakan untuk memanggil function, atau action dari si buttonnya ketika di klik
        // biasanya diisi dengan (){} -> juga disebut sebagai anynomous function bcs no name.
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
