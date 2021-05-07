import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:patiperro/home.dart';

const backgroundImage = "assets/wallpapers/imagen-5.jpg";

class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    loadHomePage();
    super.initState();
  }

  void loadHomePage() async {
    await Future.delayed(const Duration(milliseconds: 3000));
    Get.to(() => HomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              backgroundImage,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: const SizedBox.shrink(),
            ),
            Expanded(
              flex: 2,
              child: Text(
                "Patiperro",
                style: GoogleFonts.sourceSansPro(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 60.0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
