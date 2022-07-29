import 'package:flutter/material.dart';
import 'package:shimmers/contact_add_screen.dart';
import 'package:shimmers/contact_update_screen.dart';
import 'package:shimmers/widgets/contact_item.dart';
import 'package:shimmers/db/cached_contact.dart';

class ContactsPage extends StatefulWidget {
  const ContactsPage({Key? key}) : super(key: key);

  @override
  State<ContactsPage> createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  List<CachedContact> cachedContacts = [
    CachedContact(fullName: "fullName", phone: "86556656556665")
  ];

//TODO 3 Read from database
  void _init() async {}

  @override
  void initState() {
    _init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Contacts"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext con) {
                      //TODO 5 Add new contact item
                      return ContactAddScreen(
                        listenerCallBack: (bool value) {
                          if (true) {
                            _init();
                          }
                        },
                      );
                    },
                  ),
                );
              },
              icon: const Icon(
                Icons.add,
                size: 30,
              )),
          const SizedBox(width: 20),
          TextButton(
              onPressed: () {},
              child: const Text(
                "Clear All",
                style: TextStyle(fontSize: 16, color: Colors.white),
              )),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body: ListView.builder(
          itemCount: cachedContacts.length,
          itemBuilder: (BuildContext context, index) {
            return ContactItem(
              //TODO 6 Delete contact item
              onDeleteTap: () {},
              fullName: cachedContacts[index].fullName,
              phoneNumber: cachedContacts[index].phone,
              onUpdateTap: () {
                //TODO 4 Update contact item
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext con) {
                      return ContactUpdateScreen(
                        initialFullName: "initialFullName",
                        initialPhone: "+998 99123467",
                        listenerCallBack: (bool value) {},
                      );
                    },
                  ),
                );
              },
            );
          }),
    );
  }
}
