import 'package:flutter/material.dart';


class signuppage extends StatefulWidget {
  const signuppage();

  @override
  _SignupPageState createState() => _SignupPageState();
  }


  class _SignupPageState extends State<signuppage> {
    bool _passwordVisible = false;
    bool _passwordVisibledeux = false;




  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              "assets/vector/vector_signup.png",
              width: MediaQuery.of(context).size.width * 0.5,

            ),
          ),



          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 15.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: ElevatedButton.icon(
                onPressed: () {
                  print('Back');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFFCC3E),
                  minimumSize: Size(50, 50), // Taille minimale pour éviter le dépassement
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10), // Ajuste l'espace interne
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25), // Coins arrondis
                  ),
                ),
                icon: Icon(
                  Icons.arrow_back,
                  size: 18, // Taille normale pour une icône
                  color: Colors.black, // Ajoute une couleur pour plus de visibilité
                ),
                label: SizedBox.shrink(), // Cache le label
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 130), // Espace entre l'image et le texte
                Align(
                  alignment: Alignment.center,
                  child: Image.asset("assets/images/image_signup.png", width: MediaQuery.of(context).size.width * 0.5,),
                ),
                const SizedBox(height: 50),
                const Text(
                  "LET'S GO STARTED",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "SIGN UP",
                  style: TextStyle(
                    fontSize: 18,

                  ),
                ),
                const SizedBox(height: 30),

                Padding(
                  padding: const EdgeInsets.only(left:40.0,right:40.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Color(0xFFE1E5F4),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent, width: 2.0),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      suffixIcon: Icon(Icons.person, color:Colors.grey)
                    ),

                  ),
                ),
                const SizedBox(height: 10),

                Padding(
                  padding: const EdgeInsets.only(left:40.0,right:40.0),
                  child: TextField(
                    obscureText: !_passwordVisible,
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Color(0xFFE1E5F4),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent, width: 2.0),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _passwordVisible ? Icons.visibility : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                      ),

                    ),

                  ),
                ),
                const SizedBox(height: 10),

                Padding(
                  padding: const EdgeInsets.only(left:40.0,right:40.0),
                  child: TextField(
                    obscureText: !_passwordVisibledeux,
                    decoration: InputDecoration(
                      hintText: "Repeat Password",
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Color(0xFFE1E5F4),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent, width: 2.0),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _passwordVisibledeux ? Icons.visibility : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          setState(() {
                            _passwordVisibledeux = !_passwordVisibledeux;
                          });
                        },
                      ),

                    ),

                  ),
                ),
              ],




            ),
          ),



          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              "assets/images/image_signuptt.png",
              width: MediaQuery.of(context).size.width * 1, // 90% de la largeur de l'écran
              height: MediaQuery.of(context).size.height * 0.22, // 30% de la hauteur de l'écran
              fit: BoxFit.cover, // Ajuste l'image pour remplir l'espace disponible
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'Fait par Quentin Vernaison',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

