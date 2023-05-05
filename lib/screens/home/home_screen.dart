import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart'; // importação da biblioteca de SVG
import 'package:plant_app/components/my_bottom_nav_bar.dart'; // Importação do elemento de barra de navegação.
import 'package:plant_app/screens/home/components/body.dart'; // Importação do elemento do elemento corpo.

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0, //Elevar um elemento.
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
    );
  }
}
