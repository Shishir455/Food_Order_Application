import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'LoginScreen.dart';

class SlashScreen extends StatefulWidget {



  const SlashScreen({super.key});

  @override
  State<SlashScreen> createState() => _SlashScreenState();
}

class _SlashScreenState extends State<SlashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    GotoNextPage();
  }
  Future<void>GotoNextPage() async{
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SizedBox(
        height: 1000,
        child: Image.asset('assets/Image/SlashScreenImage.png',fit: BoxFit.cover,),
      ),
    ));
  }
}
