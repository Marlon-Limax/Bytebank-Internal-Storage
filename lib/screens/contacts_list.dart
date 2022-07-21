import 'package:bytebankinternalstorage/models/contact.dart';
import 'package:bytebankinternalstorage/screens/contact_form.dart';
import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  ContactList({Key? key}) : super(key: key);

  final List<Contact> contacts = [];

  @override
  Widget build(BuildContext context) {
    contacts.add(Contact(0, 'limax', 1000));
    contacts.add(Contact(0, 'limax', 2000));
    contacts.add(Contact(0, 'limax', 3000));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final Contact contact = contacts[index];
          return _ContactItem(contact);
        },
        itemCount: contacts.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(
                MaterialPageRoute(
                  builder: (context) => const ContactForm(),
                ),
              )
              .then(
                (newContact) => debugPrint(newContact.toString()),
              );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _ContactItem extends StatelessWidget {
  final Contact contact;
  _ContactItem(this.contact);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          contact.name,
          style: const TextStyle(fontSize: 24.0),
        ),
        subtitle: Text(
          contact.accountNumber.toString(),
          style: const TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}
