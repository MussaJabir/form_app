import 'package:flutter/material.dart';

void main() {
  runApp(formApp);
}

 class FormApp extends StatelessWidget {
   const FormApp({super.key});

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       home: Scaffold(
         appBar: AppBar(
           title: const Text('Application Form'),
           centerTitle: true,
         ),
       ),
     );
   }
 }

 const FormApp formApp = FormApp();