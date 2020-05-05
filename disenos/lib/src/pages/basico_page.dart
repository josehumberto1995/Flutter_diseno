import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final estiloTitulo = TextStyle(fontSize: 20.00, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18.00, color: Colors.green);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child: Column(
          children: <Widget>[
          _crearImagen(context),
          _crearTitulo(),
          _crearAcciones(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
                      
        ],
       ),
      ),
    );
  }

  Widget _crearImagen(BuildContext context){
    return Container(
      width: double.infinity,
      child: GestureDetector(
        onTap: ()=> Navigator.pushNamed(context, 'scroll'),
      child: Image(
         image: NetworkImage('https://cdn.www.gob.pe/uploads/document/file/287921/standard_DSC02989s.jpg'),
         //height: 200.00,
         fit: BoxFit.cover,
      ),
      ),
    );

  }

 Widget _crearTitulo() {
   return SafeArea(
      child: Container(padding: EdgeInsets.symmetric(horizontal: 30.00, vertical: 20.00),
      child: Row(
        children: <Widget>[
           Expanded(
           child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
           children: <Widget>[
             Text('Aguajal en su esplendor', style: estiloTitulo),
             SizedBox(height: 8.0,),
            Text('Donde nacen los aguajes', style: estiloSubTitulo),
            ],
           ),
          ),
         Icon(Icons.star, color: Colors.red, size: 30.00,),
         Text('52', style: TextStyle(fontSize: 20.00),),
           ],
         ),
       ),
   );
 }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call,'CALL'), 
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, 'Share'),
      ],
    );
  }

 Widget _accion(IconData icon, String texto){
   return Column(
   children: <Widget>[
     Icon(icon, color: Colors.blue, size: 40.00,),
     SizedBox(height: 5.0),
     Text(texto, style: TextStyle(fontSize: 15.00, color: Colors.blue) ),
    ],
  );
 }

 Widget _crearTexto() {
    return SafeArea(
        child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.00),
        child: Text(
          'Occaecat enim commodo cillum excepteur exercitation nisi non eiusmod esse velit. Cillum mollit culpa sunt incididunt ut sint ipsum consequat non reprehenderit minim adipisicing. Cupidatat consequat enim do enim ex dolor consectetur amet in Lorem ad deserunt. Et excepteur mollit deserunt elit nulla qui dolore elit. Ipsum minim duis aute do eiusmod qui cupidatat non ex qui elit dolore. Aliquip minim pariatur voluptate aute dolor deserunt aliqua culpa esse nisi consectetur veniam. Nostrud mollit nostrud pariatur nostrud est mollit commodo nulla et cillum.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}