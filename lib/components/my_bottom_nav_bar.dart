import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
//importação da biblioteca SVG para uso de imagens nesse formato.
import '../constants.dart';
// importação das variaveis de ambiente como cor e padding (espaço entre o objeto).

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    Key key,
  }) : super(key: key);
  
  //Criação de botão de navegação.

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultPadding * 2,
        right: kDefaultPadding * 2,
        bottom: kDefaultPadding,
        //determinação dos espaços do objeto na margem esquerda, direita e a parte de baixo.
      ),
      height: 80, //tamanho da largura
      decoration: BoxDecoration( // Estilo de formato em caixa com borda.
        color: Colors.white,
        boxShadow: [
          BoxShadow(//Sombra
            offset: Offset(0, -10),
            blurRadius: 35,// Raio de desfoque
            color: kPrimaryColor.withOpacity(0.38), //Cor importada da "constants" com uso de opacidade.
          ),
        ],
      ),
      child: Row(// Alinhamento do elemento filho em relação ao eixo
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton( // botão/ícone com uso de imagem no formato SVG
            icon: SvgPicture.asset("assets/icons/flower.svg"),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset("assets/icons/heart-icon.svg"),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset("assets/icons/user-icon.svg"),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
