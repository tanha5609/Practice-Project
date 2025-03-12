import 'package:flutter/material.dart';

import 'screens/home/page/home.dart';

void main() {
  runApp(const FreebiesEcom());
}


class FreebiesEcom extends StatelessWidget {
  const FreebiesEcom({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "freebies Ecommerce",
      home:   Home(),
    );
  }
}