import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 223, 9, 198)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Programa Layout'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key, 
    required this.title
    });

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  get border => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
            Expanded(
              child: Container(
                alignment: Alignment.center,
                //color: Colors.amber
                child: const Text('Layout Superior'),
              ),
            ),
            Expanded(
              flex: 7
              child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
              Expanded(
                child: Container(
                  // alignment: Alignment.center,
                  // color: Colors.red,
                  // child: const Text ('Primeira Coluna'),
                ),
              ),
               Expanded(
                flex: 2 
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 4, 133, 238)
                    borderRadius: BorderRadius.circular(20)
                    border: Border.all(color: const Color.fromARGB(255, 0, 0, 0))
                    boxShadow: const [
                    BoxShadow(
                      color: Colors.black
                      blurRadius: 10
                      offset: Offset(0, 5)
                    )
                    ]),
                child: const Text('Meu App'),
               ),
             ),
             Expanded(
              child: Container(
                //alignment: Alignment.center,
                //color: Colors.red,
                //child: const Text('Terceira Coluna'),
                ),
              ),
            ],  
          ),
        ),
         Expanded(
          flex: 2,,
          child: Container(
            alignment: Alignment.center,
            // color: Colors.blue,
            child: const Text(
              'Layout Inferior',
              )),
          )
       ],
    ),
 ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
