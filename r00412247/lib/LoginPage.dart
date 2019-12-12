import 'package:flutter/material.dart';
import 'SecondPage.dart';

class Header  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    return new Scaffold(
      body: new Stack(
        children: <Widget>[

          new Container(
            alignment: Alignment.center,
            margin: new EdgeInsets.only(
                top: 50.0

            ),

            child: new Column(
              children: <Widget>[
                new Text(
                    "Lunch Cuisine",
                    style: const TextStyle(
                        height:1.0,
                        fontSize: 40.0,
                        color: Color(0xFF040500
                        ),
                        fontWeight: FontWeight.w700
                    )
                ),

              ],
            ),
          )
        ],
      ),

    );

  }
}

class LoginPage extends StatefulWidget{
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => _LoginPageState();
}



class _LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
    final button = new InkWell(
      child: new Container(
        margin: new EdgeInsets.only(
          top: 30.0,
          left: 20.0,
          right: 20.0,
        ),
        height : 50.0,
        width: 180.0,

        decoration: new BoxDecoration(
          boxShadow: [
            new BoxShadow(
              color: Color(0x474d22),
              offset: new Offset(10.0, 10.0),
              blurRadius: 15.0,

            )
          ],



        ),

        child:  new Center(
          child: RaisedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondScreen()),
              );
            },
            shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(40.0)),

            color : Color(0xFF4eba800),



            child: new Text(
              "Ir al menu",
              style: const TextStyle(
                  height: 1,
                  fontSize: 16.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w500
              ),
            ),
          ),
        ),
      ),
    );
    final logo = Hero(
      tag:'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 70.0,
        child: Image.asset('assets/logotio.PNG'),
      ),
    );
    final nombre = TextFormField(
        keyboardType:  TextInputType.emailAddress,
        autofocus: false,
        initialValue: 'JhonDoe ',
        decoration: InputDecoration(
          hintText: 'Nombre',
          contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
        )
    );
    final numtelefono = TextFormField(
        keyboardType:  TextInputType.number,
        autofocus: false,
        initialValue: '7871234567 ',
        decoration: InputDecoration(
          hintText: 'Numero de Telefono',
          contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
        )
    );
    final lugar = TextFormField(
        keyboardType:  TextInputType.emailAddress,
        autofocus: false,
        initialValue: 'Doctor Center ',
        decoration: InputDecoration(
          hintText: 'Lugar',
          contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
        )
    );


    return Scaffold(
      backgroundColor: Colors.white,

      body: Center(

        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0,right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 10.0),
            nombre,
            SizedBox(height: 15.0),
            numtelefono,
            SizedBox(height: 24.0),
            lugar,
            SizedBox(height: 24.0,),

            button
          ],
        ),
      ),
    );
  }
}