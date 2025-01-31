import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//----- Enumerations --------------------------------
// enum PersonProperties {
//   name,
//   age,
//   height,
// }

// void test() {
//    print(PersonProperties.name);
// }

// //----- Switch Statement --------------------------------
// enum AnimalType { cat, dog, bird, fish }

// void test(AnimalType animalType) {
//   // print(animalType);

//   switch (animalType) {
//     case AnimalType.cat:
//       print('Cat');
//       break;
//     case AnimalType.dog:
//       print('Dog');
//       break;
//     case AnimalType.bird:
//       print('Bird');
//       break;
//     case AnimalType.fish:
//       print('Fish');
//   }
//   print("FUNCTION IS FINISHED");
// }

// // et au niveau de test () dans le corps
// // test(AnimalType.cat);

//----- Classes --------------------------------

class Person {

void run() {
 print("Running");
}


void breathe() {
  print('Breathing');
}


}

void test () {
  final  person = Person();
  person.run();
  person.breathe();
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
