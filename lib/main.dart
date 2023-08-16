import 'package:flutter/material.dart';

import 'ContactScreen/ContactScreen.dart';

void main() {
  runApp(ContactDesign());
}

class ContactDesign extends StatelessWidget {
  const ContactDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContactScreen(),
    );
  }
}
