import 'package:flutter/material.dart';


class signuppage extends StatelessWidget {
  const signuppage();

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

          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              "assets/images/image_signup_bas.png"
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top:20.0, left:15.0, ),
            child: Align(
              alignment: Alignment.topLeft,
              child: ElevatedButton.icon(
                onPressed: (){
                  print('Back');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFFCC3E),
                  fixedSize: Size(screenWidth * 0.1, screenHeight * 0.06),
                ),
                icon: Icon(Icons.arrow_back, size: 8,),
                label: Text(""),
              )
            ),
          )
        ],
      ),
    );
  }
}




