import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Counter',
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                child: Text(
                  'MINUS',
                ),
                onPressed: () {
                  setState(() {
                    counter--;
                    print(counter);
                  });
                },
              ),
              Text(
                '${counter}',
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
              TextButton(
                child: Text(
                  'PLUS',
                ),
                onPressed: () {
                  setState(() {
                    counter++;
                    print(counter);
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
