import 'package:bytebankinternalstorage/screens/contacts_list.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('images/bytebank_logo.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                color: Theme.of(context).colorScheme.primary,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ContactList(),
                      ),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    height: 100,
                    width: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Icon(
                          Icons.people,
                          color: Colors.white,
                        ),
                        Text(
                          'Contacts',
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ]),
    );
  }
}
