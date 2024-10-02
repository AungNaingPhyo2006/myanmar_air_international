import 'package:flutter/material.dart';

class AppLayoutbuilderWidget extends StatelessWidget {
  final int randomDivider;
  const AppLayoutbuilderWidget({super.key, required this.randomDivider});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      print(
          "Constaints=> ${constraints.constrainWidth() / randomDivider.floor()}");
      return Flex(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        direction: Axis.horizontal,
        children: List.generate(
            (constraints.constrainWidth() / randomDivider).floor(),
            (index) => const SizedBox(
                  width: 3,
                  height: 1,
                  child: DecoratedBox(
                      decoration: BoxDecoration(color: Colors.white)),
                )),
      );
    });
  }
}
