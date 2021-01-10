import 'package:flutter/material.dart';
import 'package:peliculas/src/providers/peliculas_provider.dart';
import 'package:peliculas/src/widgets/card_swiper_widget.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text('Peliculas en cines'),
        backgroundColor: Colors.indigoAccent,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){},
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            _listaPeliculas(),
          ],
        ),
      ),
    );
  }

  Widget _listaPeliculas() {

    final peliculasProvider = new PeliculasProvider();
    peliculasProvider.getEnCines(); 

    return CardSwiper(
      peliculas: [1,2,3,4,5],
      );
  }
}