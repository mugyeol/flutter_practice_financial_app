import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 35,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 80,
              ),
              _buildWelcomes(),
              _buildBlance(),
              _buildButtons(),
              SizedBox(
                height: 70,
              ),
              Row(
                children: [
                  Text(
                    'Wallets',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 30,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

_buildWelcomes() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          MyText(
            text: 'Hey, Selena',
            color: Colors.white,
            fontWeight: FontWeight.w800,
            fontSize: 28,
          ),
          MyText(
            text: 'Welcome back',
            color: Colors.white.withOpacity(0.8),
            fontSize: 14,
          ),
        ],
      ),
    ],
  );
}

_buildBlance() {
  return Padding(
    padding: const EdgeInsets.only(top: 60, bottom: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Total Balance',
          style: TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 22),
        ),
        Text(
          '\$5 194 382',
          style: TextStyle(
              color: Colors.white, fontSize: 45, fontWeight: FontWeight.w800),
        )
      ],
    ),
  );
}

_buildButtons() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Button(
        text: 'Transfer',
        txtColor: Colors.black,
        bgColor: Colors.amber,
      ),
      Button(
        text: 'Request',
        txtColor: Colors.white,
        bgColor: Color(0xFF1F2123),
      ),
    ],
  );
}

class MyText extends StatelessWidget {
  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;

  const MyText({
    super.key,
    required this.text,
    this.color,
    this.fontWeight,
    this.fontSize,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,
      ),
    );
  }
}

class Button extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color txtColor;
  const Button({
    super.key,
    required this.text,
    required this.bgColor,
    required this.txtColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: bgColor, borderRadius: BorderRadius.circular(45)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 25),
        child: Text(
          text,
          style: TextStyle(
            color: txtColor,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
