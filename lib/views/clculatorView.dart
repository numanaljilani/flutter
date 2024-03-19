import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CalculatorView extends StatefulWidget {
  const CalculatorView({super.key});

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  int x = 0;
  int y = 0;
  num z = 0;

  final displayOneCalculator = TextEditingController();
  final displayTwoCalculator = TextEditingController();

  @override
  void initState() {
    super.initState();
    displayOneCalculator.text = x.toString();
    displayTwoCalculator.text = y.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(32.0),
        child: Column(
          children: [
            display(
              hint: 'Enter a first number',
              controller: displayOneCalculator,
            ),
            SizedBox(height: 20),
            display(
              hint: 'Enter a second number',
              controller: displayTwoCalculator,
            ),
            const SizedBox(
              height: 30,
            ),
             Text(
              z.toString(),
              style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      z = num.tryParse(displayOneCalculator.text)! +
                          num.tryParse(displayTwoCalculator.text)!;
                    print(z);
                    });
                  },
                  child: const Icon(CupertinoIcons.add),
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      z = num.tryParse(displayOneCalculator.text)! -
                          num.tryParse(displayTwoCalculator.text)!;
                    });
                  },
                  child: const Icon(CupertinoIcons.minus),
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      z = num.tryParse(displayOneCalculator.text)! *
                          num.tryParse(displayTwoCalculator.text)!;
                    });
                  },
                  child: const Icon(CupertinoIcons.multiply),
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      z = num.tryParse(displayOneCalculator.text)! /
                          num.tryParse(displayTwoCalculator.text)!;
                    });
                  },
                  child: const Icon(CupertinoIcons.divide),
                ),
              ],
            )
          ],
        ));
  }
}

class display extends StatelessWidget {
  const display(
      {super.key, this.hint = "enter a number", required this.controller});

  final String? hint;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(23)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(23)),
          labelText: "0",
          hintText: hint,
          hintStyle: TextStyle(color: Colors.white)),
      keyboardType: TextInputType.number,
      autofocus: true,
    );
  }
}
