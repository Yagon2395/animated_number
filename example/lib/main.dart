import 'package:animated_number/animated_number.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Animated Number Sample'),
          ),
        ),
        body: CustomScrollView(
          primary: false,
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 22, right: 20),
                child: Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Floating Pointer Number'),
                      AnimatedNumber(
                        startValue: 0,
                        endValue: 5500.38273626732,
                        duration: Duration(seconds: 5),
                        isFloatingPoint: true,
                        decimalPoint: 4,
                        style: TextStyle(
                          color: Colors.lightBlue,
                          fontSize: 42,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(20),
              sliver: SliverGrid.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: <Widget>[
                  Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('1 second'),
                        AnimatedNumber(
                          startValue: 0,
                          endValue: 1000,
                          duration: Duration(seconds: 1),
                          isFloatingPoint: false,
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                          ),
                        ),
                        Text('miliseconds'),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('2 seconds'),
                        AnimatedNumber(
                          startValue: 0,
                          endValue: 2000,
                          duration: Duration(seconds: 2),
                          isFloatingPoint: false,
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 24,
                          ),
                        ),
                        Text('miliseconds'),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('3 seconds'),
                        AnimatedNumber(
                          startValue: 0,
                          endValue: 3000,
                          duration: Duration(seconds: 3),
                          isFloatingPoint: false,
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 30,
                          ),
                        ),
                        Text('miliseconds'),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('4 seconds'),
                        AnimatedNumber(
                          startValue: 0,
                          endValue: 4000,
                          duration: Duration(seconds: 4),
                          isFloatingPoint: false,
                          style: TextStyle(
                            color: Colors.lightGreen,
                            fontSize: 36,
                          ),
                        ),
                        Text('miliseconds'),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        AnimatedNumber(
                          startValue: 0,
                          endValue: 99.90,
                          duration: Duration(seconds: 3),
                          isFloatingPoint: true,
                          decimalPoint: 2,
                          prefixText: '\$ ',
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        AnimatedNumber(
                          startValue: 0,
                          endValue: 355.90,
                          duration: Duration(seconds: 5),
                          isFloatingPoint: true,
                          decimalPoint: 2,
                          sufixText: ' cm',
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.w500,
                            fontSize: 22,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
