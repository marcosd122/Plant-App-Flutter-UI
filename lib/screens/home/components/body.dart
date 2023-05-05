import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

import 'featurred_plants.dart'; // importação do elemento "plantas".
import 'header_with_seachbox.dart'; // importação do elemento "caixa de busca".
import 'recomend_plants.dart'; // importação do elemento "plantas recomendadas".
import 'title_with_more_bbtn.dart'; // importação do elemento "titulo".

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Alteração do tamanho de largura e altura da tela.
    Size size = MediaQuery.of(context).size;
    // ativa a rolagem em um dispositivo pequeno
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recomended", press: () {}), // Titulo "Recomendado"
          RecomendsPlants(),
          TitleWithMoreBtn(title: "Featured Plants", press: () {}), // Titulo "Plantas"
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
