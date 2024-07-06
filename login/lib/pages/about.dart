import 'package:flutter/material.dart';



/*

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("INTRO PAGE")),
      body: Center(
        child: ElevatedButton(
          child: const Text("Login"),
          onPressed: (){
           // Navigator.pushNamed(context, '/aboutpage');
          },
          ),
        ),
    );
  }
}

*/


class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ABOUT PAGE')),
      body: Text('This is a Login page'),
    );
  }
}