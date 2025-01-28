import 'package:cnt_fun/presentation/screens/button.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int click = 0;
  void increment() {
    setState(() {
      click++;
    });
  }

  void decrement() {
    setState(() {
      click--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App',
            style: TextStyle(
                color: Colors.orangeAccent,
                fontWeight: FontWeight.bold,
                fontSize: 30)),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                click = 0;
              });
            },
            icon: Icon(Icons.refresh),
          ),
        ],
      ),
      body: Stack(children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$click',
                style: TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
              ),
              Text(
                'click${click == 1 ? '' : 's'}',
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
        AlignButton(
          incrementClick: increment,
          decrementClick: decrement,
        ),
      ]),
    );
  }
}
