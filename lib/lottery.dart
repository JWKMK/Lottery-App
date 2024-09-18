import 'dart:math';

import 'package:flutter/material.dart';

class Lottery extends StatefulWidget {
  const Lottery({super.key});

  @override
  State<Lottery> createState() => _LotteryState();
}

class _LotteryState extends State<Lottery> {
  int x = 0;
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Lottery App',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('The lottery number is 4')),
          SizedBox(height: 10),
          Container(
            height: 250,
            width: 300,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.pink],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(15)),
            child: x == 4
                ? Column(
                    children: [
                      Icon(
                        Icons.done,
                        size: 30,
                      ),
                      Text('You Win The Lottery')
                    ],
                  )
                : Column(
                    children: [
                      Icon(
                        Icons.error,
                        size: 30,
                      ),
                      Text(
                          ' You Loose Your Lottery number \n is $x  please Try again')
                    ],
                  ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          x = random.nextInt(100);
          setState(() {});
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
