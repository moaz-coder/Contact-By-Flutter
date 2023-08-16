import 'package:contactscreendesgin/ContactScreen/Contact.dart';
import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  Contact contact;

  ContactItem({required this.contact});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: contact.isShow,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name :${contact.name}',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 2,
            ),
            Text('Phone :${contact.phone}',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
