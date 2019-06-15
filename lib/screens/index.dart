import 'package:flutter/material.dart';

class MyIndex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text("Abba Sali - 2019", textAlign: TextAlign.center,style: TextStyle( fontSize: 14.0,fontFamily: "Raleway", color: Colors.black)),
      ),
      body: ListView(

        children: <Widget>[
          Padding(

            padding: EdgeInsets.only(top: 100.0),
            child: Container(
              alignment: Alignment.topCenter,
              height: 100.0, 
              width: 100.0,
              child: Image.asset("images/camera.png")
            ),
          ),
          SizedBox(height:4.0),
          Text("AsamCoorp", style: TextStyle(fontFamily: "Raleway", fontSize: 24.0), textAlign: TextAlign.center),
          SizedBox(height: 12.0,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("PhotoSearch est une communauté dynamique de créatifs partageant des images sans droit d'auteur. Tous les contenus sont publiés sous licence Pixabay, ce qui les rend sûrs à utiliser sans demander la permission ou donner crédit à l'artiste. ",style: TextStyle( fontSize: 14.0), textAlign: TextAlign.start),
          ),
          SizedBox(height: 35.0,),
          Padding(
            padding: const EdgeInsets.only(left:45.0, right: 45.0),
            child: Container(
              height: 40.0,
              child: Material(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(25.0),
                child: Center(child: Text("continuer",style: TextStyle( fontSize: 15.0, color: Colors.white),)),
              )
            ),
          )
        ],
      ),
    );
  }
}
