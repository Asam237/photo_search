import 'package:flutter/material.dart';
import 'package:photo_search/utils/apiServices.dart';

class MyResult extends StatefulWidget {
  String search;
  MyResult({this.search});
  @override
  _MyResultState createState() => _MyResultState();
}

class _MyResultState extends State<MyResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: Text(
        "Photo - app",
        style: TextStyle(fontFamily: "Schyler", color: Colors.white),
      ),
    ),
      body: FutureBuilder(
          future: ApiServices.getPicts(widget.search),
          builder: (context, snapshot) {
            final data = snapshot.data;
            if (data == null) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Erreur provenant du serveur", style: TextStyle(color: Colors.red, fontFamily: "Schyler", fontSize: 20.0),),
              );
            } else {
              if(snapshot.hasData) {
                return ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(12.0),
                        child: Card(
                          elevation: 3.0,
                          child: FadeInImage.assetNetwork(
                              placeholder: "images/loading.gif",
                              image: "${data['hits'][index]['largeImageURL']}"),
                        ),
                      );
                    });
              } else if(!snapshot.hasData){
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            }

          }),
    );
  }
}
