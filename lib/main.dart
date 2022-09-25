import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Converter Suhu'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController etInput = TextEditingController();

  double inputUser = 0;
  double kelvin = 0;
  double reamor = 0;
  double farentheit = 0;

  test() {
    setState(() {
      inputUser = (etInput.text == '') ? 0 : double.parse(etInput.text);
      kelvin = inputUser + 273;
      reamor = (4 / 5) * inputUser;
      farentheit = (9 / 5) * inputUser + 32;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: etInput,
                decoration:
                    const InputDecoration(hintText: "Masukkan Nilai Suhu"),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(10.0),
                  height: 150,
                  width: 125,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.blue),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10.0),
                        child: const Text('Kelvin'),
                      ),
                      Container(
                        child: Text('$kelvin'),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  height: 150,
                  width: 125,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.blue),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10.0),
                        child: const Text('Reamor'),
                      ),
                      Container(
                        child: Text('$reamor'),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  height: 150,
                  width: 125,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.blue),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10.0),
                        child: const Text('Farenheit'),
                      ),
                      Container(
                        child: Text('$farentheit'),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                test();
              },
              child: Container(
                  width: double.infinity,
                  color: Colors.blue,
                  height: 60,
                  padding: const EdgeInsets.all(10.0),
                  child: const Center(child: Text('Konversi'))),
            )
          ],
        ),
      ),
    );
  }
}
