import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class loginpage extends StatelessWidget {
  const loginpage();

  @override
  Widget build(BuildContext context) {
    // Obtenir la largeur et la hauteur de l'écran
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView( // Permet de scroller si l'écran est petit
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1), // Padding dynamique
          child: Column(
            children: [
              SizedBox(height: screenHeight * 0.1), // Espacement en haut

              // Image d'accueil
              Image.asset(
                "assets/images/image_login.png",
                height: screenHeight * 0.2, // Taille responsive
              ),

              SizedBox(height: screenHeight * 0.05), // Espacement

              // Texte "Welcome Back"
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Welcome Back",
                  style: TextStyle(
                    fontSize: screenWidth * 0.07, // Taille de police dynamique
                    color: Color(0xff474747),
                  ),
                ),
              ),

              SizedBox(height: screenHeight * 0.02),

              // Texte "Log In"
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Log In",
                  style: TextStyle(
                    fontSize: screenWidth * 0.12, // Taille de police dynamique
                    color: Color(0xff000000),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              SizedBox(height: screenHeight * 0.03),

              // Champ email
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter your email",
                  hintStyle: TextStyle(color: Colors.grey),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple, width: 2.0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple, width: 2.0),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),

              SizedBox(height: screenHeight * 0.02),

              // Champ mot de passe
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter your password",
                  hintStyle: TextStyle(color: Colors.grey),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple, width: 2.0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple, width: 2.0),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),

              SizedBox(height: screenHeight * 0.03),

              // Bouton "Log In"
              ElevatedButton(
                onPressed: () {
                  print("Log In button pressed");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFE1BEE7),
                  padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.3, // Largeur dynamique
                    vertical: 15,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Text(
                  "Log In",
                  style: TextStyle(
                    fontSize: screenWidth * 0.07,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),

              SizedBox(height: screenHeight * 0.02),

              // Texte "Forgot Password?"
              TextButton(
                onPressed: () {
                  print("Forgot Password pressed");
                },
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    fontSize: screenWidth * 0.03,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff474747),
                  ),
                ),
              ),

              SizedBox(height: screenHeight * 0.03),

              // Texte "Log In with socials"
              Text(
                "Log In with socials",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: screenWidth * 0.03,
                  color: Color(0xff474747),
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: screenHeight * 0.02),

              // Boutons Google et Facebook
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      print("Google Button Pressed");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[400],
                      fixedSize: Size(screenWidth * 0.35, screenHeight * 0.06),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    icon: Icon(Icons.g_translate, color: Colors.white),
                    label: Text(""),
                  ),
                  SizedBox(width: screenWidth * 0.04),
                  ElevatedButton.icon(
                    onPressed: () {
                      print("Facebook Button Pressed");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[400],
                      fixedSize: Size(screenWidth * 0.35, screenHeight * 0.06),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    icon: Icon(Icons.facebook, color: Colors.white),
                    label: Text(""),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


