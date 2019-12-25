import 'package:easyjob/DI/DIContainer.dart';
import 'package:easyjob/ui/offers_list.dart';
import 'package:flutter/material.dart';

void main() {
  DIContainer.loadContainer();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: OffersList());
  }
}
