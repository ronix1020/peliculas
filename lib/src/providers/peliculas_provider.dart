import 'package:peliculas/src/models/pelicula_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';



class PeliculasProvider {

  String _apiKey = 'facb0c43f66a958cbe125ae9e085cd01';
  String _url = 'api.themoviedb.org';
  String _language = 'es-ES';


  Future<List<Pelicula>> getEnCines() async {

    final url = Uri.https(_url, '3/movie/now_playing', {
      'api_key'   : _apiKey,
      'language'  : _language
    });

    final res = await http.get( url );
    final decodedData = json.decode( res.body );

    final peliculas = new Peliculas.fromJsonlist(decodedData['results']);

    return peliculas.items;

  }


}