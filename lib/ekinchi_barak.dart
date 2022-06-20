import 'package:flutter/material.dart';

class EkinchiBarak extends StatelessWidget {
  const EkinchiBarak({Key key,this.kelgensan}) : super(key: key);

  final String kelgensan;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.grey,
        title: const Text(
          'Tапшырма 2',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              12.0,
            ),
            color: Colors.black12,
          ),
          child:  Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 15.0,
              horizontal: 125.0,
            ),
            child: Text(
              'сан:$kelgensan',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
