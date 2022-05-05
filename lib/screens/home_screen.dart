
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    const fontsize30 = TextStyle( fontSize: 30.0);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Número de clicks',
               style: fontsize30,
            ),
            Text(
              '10',
              style: fontsize30,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){} ,
        child: const Icon(Icons.add),
      ),
    );
  }
}