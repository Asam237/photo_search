import 'package:flutter/material.dart';
import 'package:photo_search/screens/accueil.dart';

class MyIndex extends StatelessWidget {
  String textLogo = "Photo - app";
  String textAccueil =
      "photosearch est une communauté dynamique de créatifs partageant des images sans droit d'auteur. tous les contenus sont publiés sous licence pixabay, ce qui les rend sûrs à utiliser sans demander la permission ou donner crédit à l'artiste.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text("Abba Sali - 2019",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 16.0, fontFamily: "Schyler", color: Colors.black)),
      ),
      body: Material(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ListTile(
                title: Container(
                  alignment: Alignment.center,
                  height: 150.0,
                  width: 150.0,
                  child: Image.asset("images/camera.png"),
                ),
                subtitle: Container(
                  margin: EdgeInsets.all(15.0),
                  child: Text(
                    textLogo,
                    style: TextStyle(
                        fontFamily: "Schyler",
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        letterSpacing: 0.3,
                        fontSize: 23.0),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 25.0, right: 25.0, bottom: 20.0),
                child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      textAccueil,
                      style: TextStyle(
                          fontFamily: "Schyler",
                          fontSize: 16.0,
                          color: Colors.black),
                    )),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 30.0,
                ),
                height: 45.0,
                width: 250.0,
                child: Material(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.blueGrey,
                  child: InkWell(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => Accueil()),
                          (Route route) => false);
                    },
                    child: Center(
                      child: Text(
                        "Continuer",
                        style: TextStyle(
                            fontFamily: "Schyler", color: Colors.white),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
