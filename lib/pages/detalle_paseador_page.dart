import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:paseando_pet/modelo/modelos_modelo.dart';
import 'package:paseando_pet/pages/home_page.dart';


class DetallePaseador extends StatefulWidget {

  final datosPaseador paseador;


  DetallePaseador(this.paseador);

  @override
  State<DetallePaseador> createState() => _DetallePaseadorState();
}

class _DetallePaseadorState extends State<DetallePaseador> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.paseador.nombre),
      ),
      body: SingleChildScrollView(
        child: Column(
          children:[
            miCardImage(widget.paseador.foto, widget.paseador.nombre+"\n"+widget.paseador.contacto+"\n"+widget.paseador.ciudad+"\n\n"+widget.paseador.perfil),
            RatingBar.builder(
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: false,
              itemCount: 5,
              itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) =>
              const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            )
          ]


        ),
      ),
    );
  }
}