
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,

    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _count = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample Code'),
      ),
      body: Center(
        child: Text('You have pressed the button $_count times.'),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          _count++;
        }),
        tooltip: 'Increment Counter',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}





class SecondScreen extends StatelessWidget {
  @override
  Widget build (BuildContext txt) {

    return new Scaffold(
      appBar: new AppBar(centerTitle: true,
        title: Text("Menu"),
        flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Colors.green,
                  Colors.orange
                ],

              ),



            )
        ),

      ),

      body: new ListView(
        children: <Widget>[

          Card(

            child: ListTile(
              leading: Image.asset ('assets/images/lasagna.jpeg',
                width: 64,
                height: 82,
                fit:BoxFit.fitWidth,
              ),
              title: Text('Lasaña'),
              subtitle: Text(
                'Rica Lasaña de carne molida o pollo con queso Mozarrella gratinado y salsa roja hecha en casa',

              ),

            ),
          ),
          Card(
            child: ListTile(
              leading: Image.asset ('assets/images/camarones.jpeg',
                width: 64,
                height: 82,
                fit: BoxFit.fitWidth,
              ),
              title: Text('Ensalada de camarones'),
              subtitle: Text(
                  'Ensalada de camarones frescos con pulpo y diferentes pimientos para dar textura y sabor'
              ),

            ),
          ),
        ],
      ),


    );

  }
}