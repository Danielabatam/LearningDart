import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

void test() {
  // const person = {
  //   'age': 30,
  //   'name': 'John Doe',
  // };
  // print(person);
  // person['name'] = 'FOOOOO';
  // print(person);

  // person['lastname'] = 'Baz';
  // print(person);

  // --------------

  // String? name = null;
  // print(name);
  // name = 'John Doe';
  // print(name);

  // --------------
  // int? age = 20; {}

  // --------------

  // final List<int?>? numbers = [1, 2, 3, 4, 5];

  //-----  Pick the first non null value || operator ??

  // const String? firstName = null;
  // const String? middleName = 'Bar';
  // const String? lastName = 'Doe';

  // const firstNonNullValue = firstName ?? middleName ?? lastName; // si la 1ere variable est nulle on passe à la suivante jsuqu'a trouver une valeur non nulle

  // -------------- Null-aware assignement operator || ??= operator --------------------
  // Cet operateur se rassure qu'une variable est non nulle avant de lui assigner une valeur
  // on mets en parametre de la fonction void (String? firstName, String? middleName, String? lastName)
  //par conséquent on les mets parametres dans test également ligne 58. ||     test(null, 'foe', 'bar');

  // String? name = firstName;
  // name ??= lastName; // si name est null on lui assigne lastName
  // name ??= middleName; // si name est toujours null on lui assigne middleName
  // print(name);

  // -------------- Conditional Innvocation || ?. operator --------------------
  // void test(List<String>? names) {
  //   names?.add('Baz');
  // }
  //url: dart.dev/null-safety/u,derstanding-null-safety

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
