import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math' as math;

const assetName = "assets/wallpapers/imagen-3.jpg";
const colorFondo = Color(0xFFE7F6F8);

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(assetName),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          children: [
            ContenidoPrincipalIzquierda(),
            ContenidoMenuDerecha(),
          ],
        ),
      ),
    );
  }
}

class ContenidoPrincipalIzquierda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * .75,
      color: colorFondo,
      child: ListView(
        children: [
          HeaderInfoProfileUser(),
          SearchBar(),
          CarruselPlaces(),
          ListArtesanosPlace(),
        ],
      ),
    );
  }
}

class HeaderInfoProfileUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class CarruselPlaces extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ListArtesanosPlace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ContenidoMenuDerecha extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * .25,
      height: Get.height,
      color: Colors.black.withOpacity(.5),
      child: ListView(
        children: [
          _textMenuVertical(text: "Arica"),
          _textMenuVertical(text: "Valparaiso"),
          _textMenuVertical(text: "Iquique", isActive: true),
          _textMenuVertical(text: "Concepcion"),
          _textMenuVertical(text: "Isla de pascua"),
          _textMenuVertical(text: "Chiloe"),
        ],
      ),
    );
  }

  Widget _textMenuVertical({String text, bool isActive = false}) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 25.0),
        child: RotatedBox(
          quarterTurns: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: SizedBox(height: constraints.maxWidth * .25)),
              Container(
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Expanded(child: SizedBox(height: constraints.maxWidth * .03)),
              Container(
                width: 50,
                height: 20,
                decoration: BoxDecoration(
                  color: isActive ? colorFondo : Colors.transparent,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
