import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//----- Future  --------------------------------
// Future <int> heavyFutureThatMultipliesByTwo(int a) {
//   return Future.delayed(const Duration(seconds: 3), () {
//     return a * 2;
//   });
// }
//
// void test() async{
//   final result = await heavyFutureThatMultipliesByTwo(10);
//   print(result);
// }


//----- Streams  --------------------------------
Stream <String> getName() {
  // return Stream.value('Foo');
  return Stream.periodic(const Duration(seconds: 1), (value) {
    return 'Foo';
  });
}

void test() async {
  await for (final value in getName()) { // à la différence des Future ici le await ce mets au début de la ligne et non devant la fonction
    print(value);
  }
  print('Stream finished working');
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    test();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
