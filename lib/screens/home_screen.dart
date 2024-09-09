import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    children: [Text('data'), Text('Hi')],
                  ),
                  Container(
                    color: Colors.red,
                    width: 100,
                    height: 70,
                  )
                ],
              ),
              const Row(
                children: [Text('Hello'), Text('Testing')],
              )
            ],
          )
        ],
      ),
    );
  }
}
