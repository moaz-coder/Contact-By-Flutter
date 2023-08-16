import 'package:contactscreendesgin/ContactScreen/Contact.dart';
import 'package:contactscreendesgin/ContactScreen/ContactItem.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  TextEditingController namedController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  Contact contact1 = Contact(isShow: false, name: '', phone: '');
  Contact contact2 = Contact(isShow: false, name: '', phone: '');
  Contact contact3 = Contact(isShow: false, name: '', phone: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Contact Screnn"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "please enter your name";
                    }
                    return null;
                  },
                  keyboardType: TextInputType.name,
                  controller: namedController,
                  style: TextStyle(color: Colors.black, fontSize: 16),
                  decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.mode_edit_outline,
                        color: Colors.blue,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(30)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(30)),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(30)),
                      focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(30)),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'Enter Your Name Here',
                      hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  controller: phoneController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "please enter your Phone";
                    }
                    return null;
                  },
                  style: TextStyle(color: Colors.black, fontSize: 16),
                  decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.call,
                        color: Colors.blue,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(30)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(30)),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(30)),
                      focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(30)),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'Enter Your Phone Here',
                      hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            setState(() {
                              if (contact1.isShow == false) {
                                contact1.isShow = true;
                                contact1.name = namedController.text;
                                contact1.phone = phoneController.text;
                              } else if (contact2.isShow == false) {
                                contact2.isShow = true;
                                contact2.name = namedController.text;
                                contact2.phone = phoneController.text;
                              } else if (contact3.isShow == false) {
                                contact3.isShow = true;
                                contact3.name = namedController.text;
                                contact3.phone = phoneController.text;
                              }
                            });
                          }
                        },
                        child: Text(
                          'Add',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40))),
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            setState(() {
                              if (contact3.isShow == true) {
                                contact3.isShow = false;
                              } else if (contact2.isShow == true) {
                                contact2.isShow = false;
                              } else if (contact1.isShow == true) {
                                contact1.isShow = false;
                              }
                            });
                          }
                        },
                        child: Text(
                          'Delete',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40))),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ContactItem(
                  contact: contact1,
                ),
                SizedBox(
                  height: 15,
                ),
                ContactItem(
                  contact: contact2,
                ),
                SizedBox(
                  height: 15,
                ),
                ContactItem(
                  contact: contact3,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
