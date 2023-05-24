import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor:  Colors.green,),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'ID Card'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body:  SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.

          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.green,
                  child: Column(
                    children: [
                      const SizedBox(
                        height:10,
                      ),
                      SizedBox(
                        height:80,
                         width: 80,
                         child: Image.asset('Assets/Images/iut_logo.jpg'),
                       ),

                      const SizedBox(

                        child: Text(
                          'Islamic University of Technology',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),

                      const SizedBox(
                        height:70,
                      ),
                    ],
                  ),
                ),

                Positioned(
                  bottom : -60,
                  child : Container(
                    height: 120,
                    width: 80,
                    decoration: BoxDecoration(
                      border: Border.all( //<-- SEE HERE
                        width: 3,
                        color: Colors.green,
                      ),
                    ),
                    child: Image.asset('Assets/Images/dp.jpeg'),
                  ),

                ),
              ],
            ),





          Column(
            children: <Widget> [
              const SizedBox(
                height:70,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                  Row(
                    children: [
                      Icon(Icons.key),
                      Text('Student ID'),
                    ],
                  ),
                ],
              ),

              Container(
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  color:Colors.green,
                  borderRadius: BorderRadius.circular(20.0),
                ),

                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.circle,color: Colors.blue,),
                    Text('190041118'),
                  ],
                ),

              ),

              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                  Row(
                    children: [
                      Icon(Icons.person),
                      Text('Student Name'),
                    ],
                  ),
                ],
              ),

              const SizedBox(

                child: Text(
                  'SHAHRIAR MAHMUD',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),

              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                  Row(
                    children: [
                      Icon(Icons.school),
                      Text('Program'),
                      Text('BSc in CSE',style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
                ],
              ),

              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                  Row(
                    children: [
                      Icon(Icons.group),
                      Text('Department'),
                      Text('CSE',style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
                ],
              ),

              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                  Row(
                    children: [
                      Icon(Icons.location_city),
                      Text('Bangladesh',style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
                ],
              ),

              Container(
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  color:Colors.green,
                ),

                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('A subsidiary organ of OIC'),
                  ],
                ),

              ),

            ],
          ),


            ],
          ),//last
      ),
      );
  }
}
