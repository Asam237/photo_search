import 'package:flutter/material.dart';
import 'package:photo_search/screens/index.dart';

void main() => runApp(
  MaterialApp(
  home: MyIndex(),
  debugShowCheckedModeBanner: false,
  )
);

class Urls{
  static const URL_BASE = "https://pixabay.com/api/?key=11484437-f1fcd5e2fc8022a6d746b7022&q=yellow+flowers&image_type=photo&pretty=true";
}
