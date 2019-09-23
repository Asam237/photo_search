import 'package:flutter/material.dart';
import 'package:photo_search/screens/result.dart';

class Accueil extends StatelessWidget {

  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.blueGrey,
        title: Text(
          "Photo - app",
          style: TextStyle(fontFamily: "Schyler", color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20.0),
              alignment: Alignment.center,
              height: 150.0,
              width: 150.0,
              child: Image.asset("images/camera.png"),
            ),
            Material(
              child: ListTile(
                title: Container(
                  height: 45.0,
                  margin: EdgeInsets.all(20.0),
                  child: TextField(
                    controller: myController,
                    decoration: InputDecoration(
                        hintText: "ex: dog",
                        labelText: "Recherche",
                        hintStyle: TextStyle(fontFamily: "Schyler"),
                        labelStyle: TextStyle(fontFamily: "Schyler"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0))),
                  ),
                ),
                subtitle: Container(
                  margin: EdgeInsets.all(15.0),
                  height: 45.0,
                  width: 150.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.blueGrey,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyResult(
                                      search: myController.text,
                                    )));
                      },
                      child: Center(
                        child: Text(
                          "Rechercher",
                          style: TextStyle(
                              fontFamily: "Schyler", color: Colors.white),
                        ),
                      ),
                    ),
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
