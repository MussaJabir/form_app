import 'package:flutter/material.dart';

void main() {
  runApp(formApp);
}

class FormApp extends StatelessWidget {
  const FormApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Application Form'),
          centerTitle: true,
        ),
        body: const UserForm(), // Embedding UserForm in the body
      ),
    );
  }
}

class UserForm extends StatefulWidget {
  const UserForm({super.key});

  @override
  State<UserForm> createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _secondNameController = TextEditingController();
  final TextEditingController _thirdNameController = TextEditingController();

  String firstName = '';
  String secondName = '';
  String thirdName = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome ${firstName.isNotEmpty || secondName.isNotEmpty || thirdName.isNotEmpty ? '$firstName $secondName $thirdName' : ''}',
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: _firstNameController,
            decoration: const InputDecoration(
              labelText: "Enter your first name",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: _secondNameController,
            decoration: const InputDecoration(
              labelText: "Enter your second name",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: _thirdNameController,
            decoration: const InputDecoration(
              labelText: "Enter your third name",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                firstName = _firstNameController.text;
                secondName = _secondNameController.text;
                thirdName = _thirdNameController.text;
              });
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}

const FormApp formApp = FormApp();
