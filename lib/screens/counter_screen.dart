
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 15;

  void increase() {
    counter++;
    setState(() {});
  }
  void decrease() {
    counter--;
    setState(() {});
  }
  void zero() {
    counter=0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    const fontsize30 = TextStyle( fontSize: 30.0);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Número de clicks',
               style: fontsize30,
            ),
            Text(
              '$counter',
              style: fontsize30,
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingActions(
        increaseFn: increase,
        decreaseFn: decrease,
        zeroFn: zero,
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function zeroFn;
  const CustomFloatingActions({
    Key? key, 
    required this.increaseFn,
    required this.decreaseFn, 
    required this.zeroFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.remove),
          onPressed: () => decreaseFn(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.exposure_zero),
          onPressed: () => zeroFn(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () => increaseFn(),
        ),
      ],
    );
  }
}