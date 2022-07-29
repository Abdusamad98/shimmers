import 'package:flutter/material.dart';

class ContactAddScreen extends StatefulWidget {
  const ContactAddScreen({Key? key, required this.listenerCallBack})
      : super(key: key);
  final ValueChanged<bool> listenerCallBack;

  @override
  State<ContactAddScreen> createState() => _ContactAddScreenState();
}

class _ContactAddScreenState extends State<ContactAddScreen> {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Contact"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                keyboardType: TextInputType.text,
                controller: fullNameController,
                decoration: const InputDecoration(hintText: "Write Full Name"),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(hintText: "Write Phone"),
              ),
              const SizedBox(height: 30),
              TextButton(
                  onPressed: () async {
                    widget.listenerCallBack.call(true);
                  },
                  child: Row(
                    children: const [
                      Text("Add contact"),
                      SizedBox(width: 10),
                      Icon(Icons.add_box)
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
