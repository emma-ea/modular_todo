import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: LandingPage(), 
      ),
    );
  }
}


class LandingPage extends StatefulWidget {
	const LandingPage({super.key});	
	@override
	_LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
	@override 
	Widget build(BuildContext context) {
		return const Text("hello, ");
	}
}
