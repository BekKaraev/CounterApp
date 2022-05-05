import 'package:flutter/material.dart';
import 'package:tapchyrma1/ekinchi_barak.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key,}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(primarySwatch: Colors.blue, backgroundColor: Colors.white),
      home: const MyHomePage(
        kelgensan: 'Тапшырма1',
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, @override this.kelgensan}) : super(key: key);

  final String kelgensan;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _san = 5;

  void _incrementCounter() {
    setState(() {
      _san++;
    });
  }

  void _recrementCounter() {
    setState(() {
      _san--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: const Color.fromRGBO(0, 0, 0, 0),
        centerTitle: true,
        title: Text(
          widget.kelgensan,
          style: const TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EkinchiBarak(kelgensan: _san.toString()),),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.black12),
                  width: 294,
                  height: 48,
                  child: Text(
                    'сан : $_san',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      height: 2.5,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 45.0,
            ),
            const SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: SizedBox(
                    height: 44.0,
                    width: 66.0,
                    child: ElevatedButton(
                      onPressed: () {
                        _recrementCounter();
                      },
                      child: const Icon(Icons.remove),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 66.0,
                  height: 44.0,
                ),
                SizedBox(
                  height: 45.0,
                  width: 60.0,
                  child: ElevatedButton(
                    onPressed: () {
                      _incrementCounter();
                    },
                    child: const Icon(Icons.add),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
