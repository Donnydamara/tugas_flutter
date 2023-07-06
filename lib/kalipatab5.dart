import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';


class AppStateful extends StatefulWidget {
  const AppStateful({Key? key}) : super(key: key);

  @override
  State<AppStateful> createState() => _AppStatefulState();
}

class _AppStatefulState extends State<AppStateful> {
   int angka = 0;

  void klik() {
    setState(() {
      angka = (angka + 5) % 35 ;
    });
  }

bool isMultipleOfFive(int number) {
    return number % 5 == 0;
 }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz 1 dan UTS PAPB',
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: klik,
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text('Donny Damara Nanda Putra Arifin (20104410078) Absen Ganjil'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Angka: $angka',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue,
                  fontWeight:
                      isMultipleOfFive(angka) ? FontWeight.bold : FontWeight.normal,
                ),
              ),
              Text(
                'Angka Adalah Kalipatan 5',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 255, 0, 0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}