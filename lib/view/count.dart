import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:mobxcounter/store/counter.dart';

class Count extends StatelessWidget {
  const Count({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  CounterStore _counter = CounterStore();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Counter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Counter App"),
          backgroundColor: Color(0xff03dac6),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              left: 30,
              bottom: 20,
              child: FloatingActionButton(
                heroTag: 'minus',
                backgroundColor: Color(0xff03dac6),
                onPressed: () {
                  _counter.decrement();
                },
                child: const Icon(
                  Icons.remove,
                  size: 40,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              right: 30,
              child: FloatingActionButton(
                heroTag: 'add',
                backgroundColor: Color(0xff03dac6),
                onPressed: () {
                  _counter.increment();
                },
                child: const Icon(
                  Icons.add,
                  size: 40,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: Center(
            child: Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Observer(
                  builder: (context) {
                    return Text(
                      "Value : ${_counter.counter}",
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.w700),
                    );
                  },
                ),
                Text(
                  "",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
                )
              ],
            )),
          ),
        ),
      ),
    );
  }
}
