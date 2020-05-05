import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _paginaUna(),
          _paginaDos(context),
        ],
      )
    );
  }

 Widget _paginaUna() {
    return Stack(
      children: <Widget>[
        _colorFondo(),
        _imagenFondo(),
        _textos(),
      ],
    );
  }
 Widget _colorFondo() {
   return Container(
     width: double.infinity,
     height: double.infinity,
     color: Color.fromRGBO(108, 192, 218, 1.0),
   );
 }

 Widget _imagenFondo() {
   return Container(
     width: double.infinity,
     height: double.infinity,
     child: Image(
       image: AssetImage('assets/original.png'),
       fit: BoxFit.cover,
      ),
   );
 }

 Widget _textos() {

   final estiloTexto = TextStyle(color: Colors.white, fontSize: 50.00);

   return SafeArea(
        child: Column(
       children: <Widget>[
         SizedBox(height: 20.00),
         Text('11°', style: estiloTexto),
         Text('Martes', style: estiloTexto),
         Expanded(
           child: Container()),
         Icon(Icons.keyboard_arrow_down, size: 70.00, color: Colors.white,)
       ],
     ),
   );
 }

 Widget _paginaDos(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
      child: Center(
        child: RaisedButton(
          shape: StadiumBorder(),
          color: Colors.blueAccent,
          textColor: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 40.00, vertical: 20.00),
          child: Text('BIENVENIDOS AGUAJES', style: TextStyle(fontSize: 20.00 )),
          onPressed: () =>  Navigator.pushNamed(context, 'botones'),
          ),
      ),
    );
  }





 
}