import 'package:flutter/material.dart';

void main() {
  runApp(const profileCardAlka());
}

class profileCardAlka extends StatelessWidget {
  const profileCardAlka({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // Terapkan font global di seluruh aplikasi
        fontFamily: 'SchibstedGrotesk',
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontSize: 18),
          bodyMedium: TextStyle(fontSize: 16),
          bodySmall: TextStyle(fontSize: 14),
        ),
      ),
      home: const ContentDesign(),
    );
  }
}

class ContentDesign extends StatelessWidget {
  const ContentDesign({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      home: 
        Scaffold(
          backgroundColor: Color(0xFFFFEBCD),
          appBar: AppBar(
            backgroundColor: Color(0xFF005248),
            title: const Text("Penugasan1-PersonalProfileCard",
                style: TextStyle(color: Color(0xFFEF9505), fontWeight: FontWeight.w300)),
            centerTitle: true,
          ),
          body: Center(
            child: Container(
              margin: EdgeInsets.only(top: screenHeight*0.05, bottom: screenHeight*0.05),
              decoration: BoxDecoration(
                    color: Color(0xFFFFEBCD), // Add background color
                    borderRadius: BorderRadius.circular(5), // Optional: rounded corners
                    border: Border.all(color: Color(0xFF005248), width: 2), // Outline color and width
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26, // Shadow color
                        blurRadius: 30, // Spread of shadow
                        offset: Offset(0, 4), // Shadow position
                      ),
                    ],
                  ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                      flex: (screenHeight * 0.25).toInt(),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Container( 
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Alka Sidik Prawira",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF005248))),
                            Text("5026221183",
                                style: TextStyle(
                                    fontSize: 18, color: Color(0xFF005248), fontWeight: FontWeight.w300))
                          ])))),
                  Expanded(
                      flex: (screenHeight * 0.10).toInt(),
                      child: Container( 
                        child:
                          const Text("Biasanya tidur cuma 8 jam",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Color(0xFF005248), fontWeight: FontWeight.w300, fontSize: 18)
                              ))),
                  Expanded(
                      flex: (screenHeight * 0.62).toInt(),
                      child: Container( 
                        child: Image.asset("lib/assets/FotoProfil.jpg"))),
              ],
            ),
            ),
          ),
        ),
    );
  }
}