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
      ),
      body: FutureBuilder(
          future: ApiServices.getPicts(widget.search),
          builder: (context, snapshot) {
            Map data = snapshot.data;
            if (snapshot.hasError) {
              return Text("Erreur");
            } else if (snapshot.hasData) {
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
            }
          }),
    );
  }
}
