import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {




  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        elevation: 0,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Center(child: Text('Profile App')),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: NetworkImage("https://t4.ftcdn.net/jpg/02/44/43/69/240_F_244436923_vkMe10KKKiw5bjhZeRDT05moxWcPpdmb.jpg"),

              radius: 60.0,
              
            ),
            Text("Martin.S",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
            SizedBox(width: 10.0),
            Text("Flutter Developer",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
            SizedBox(height: 20.0,
            width: 300.0,
            child: Divider(
              color: Colors.white,
              thickness: 2.0,
            ),),

            Container(

              height: 45,
              color: Colors.white,
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
              child: Row(
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.teal,
                    size: 25.0,
                  ),
                  SizedBox(width: 10.0),
                  Text("+9876543210",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.teal),),
                ],
              ),
            ),
            Container(
              height: 45,
              color: Colors.white,
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
              child: Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.teal,
                    size: 25.0,
                  ),
                  SizedBox(width: 10.0),
                  Text("developer@gmail.com",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.teal),),
                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}
