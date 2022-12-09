import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      home: Home(),
    );
  }
}

class Home  extends StatefulWidget {
 
  @override
  _HomeState  createState() => _HomeState();
  
}


class _HomeState extends State < Home > with SingleTickerProviderStateMixin
{
 double op = 0 ;
late AnimationController _controller;
@override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 250), value: 1);
        WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {
          op = 1 ;
        }));
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: AnimatedOpacity(
          opacity: op ,
          duration: Duration(seconds: 3 ),
          child: FlutterLogo(
              size: 150,
            ),
          ),
      ) 
    );

  }
  
  }
  

  
	