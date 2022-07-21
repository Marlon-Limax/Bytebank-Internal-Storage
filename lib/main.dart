import 'package:bytebankinternalstorage/database/app_database.dart';
import 'package:bytebankinternalstorage/models/contact.dart';
import 'package:bytebankinternalstorage/screens/contact_form.dart';
import 'package:bytebankinternalstorage/screens/contacts_list.dart';
import 'package:bytebankinternalstorage/screens/dashboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ByteBankApp());
  save(Contact(3, 'amanda', 1000)).then((id) {
    findAll().then((contacts) => debugPrint(contacts.toString()));
  });
}

class ByteBankApp extends StatelessWidget {
  const ByteBankApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Colors.green[900],
            secondary: Colors.blueAccent,
          ),
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.blue[700],
            textTheme: ButtonTextTheme.primary,
          ),
        ),
        home: const Dashboard());
  }
}
