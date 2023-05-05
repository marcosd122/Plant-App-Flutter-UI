import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart'; // importação da biblioteca de SVG
import 'package:plant_app/components/my_bottom_nav_bar.dart'; // Importação do elemento de barra de navegação.
import 'package:plant_app/screens/home/components/body.dart'; // Importação do elemento do elemento corpo.

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) { //Elemento de construção de outros componentes.
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(), // Componente importado
      bottomNavigationBar: MyBottomNavBar(),//Elemento para navegação entre outras telas
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0, //Elemento que cria uma sombra.
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {}, // Elemento executado ao clicar no botão.
      ),
    );
  }
}
