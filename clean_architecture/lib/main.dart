import 'package:clean_architecture/core/inject/inject.dart';
import 'package:clean_architecture/layers/presentation/ui/pages/carro_page.dart';
import 'package:flutter/material.dart';

void main() {
  Inject.init();
  runApp(
    MaterialApp(
      home: CarroPage(),
    ),
  );
}
