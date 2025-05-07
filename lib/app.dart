import 'package:flutter/material.dart';
import 'package:restaurent_order_app/UI%20Screen/EmailVerificationScreen.dart';
import 'package:restaurent_order_app/UI%20Screen/LoginScreen.dart';
import 'package:restaurent_order_app/UI%20Screen/Slash_Screen.dart';

import 'UI Screen/ForgetPasswordSetScreen.dart';
import 'UI Screen/NavigatorStylePage.dart';
import 'UI Screen/PinVerificationScreen.dart';
import 'UI Screen/RegistrationScreen.dart';


class RestaurentApp extends StatelessWidget {

  const RestaurentApp ({super.key

  });

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(


      routes: {
        '/SlashScreen':(context)=>SlashScreen(),
        '/ForgetPasswordScreen':(context)=>ForgetPasswordScreen(),
        '/RegistrationScreen':(context)=>RegistrationScreen(),
        '/LoginScreen':(context)=>LoginScreen(),
        '/EmailVerificationScreen':(context)=> Emailverificationscreen(),
      '/NavigatorStylePage':(context)=>NavigatorStylePage(),
        '/PinVerification':(context)=>PinVerification(),


      },
      theme:  ThemeData(

        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          hintStyle: TextStyle(height: 2),
          border: _getZeroBorder(),
          enabledBorder: _getZeroBorder(),
          errorBorder: _getZeroBorder(),



        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              fixedSize:const Size.fromWidth(double.maxFinite),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))
          ),
        ),
        textTheme: TextTheme(

            titleLarge: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 30),
            bodyMedium: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)
        ),

        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,
          toolbarHeight: 70,
          elevation: 10,
          shadowColor: Colors.black54,
          foregroundColor: Colors.white

        ),
        navigationBarTheme: NavigationBarThemeData(
          backgroundColor: Colors.black,
          indicatorColor: Colors.white,

        )

      ),

      home: SlashScreen(),
      debugShowCheckedModeBanner: false,


    );

  }

  OutlineInputBorder  _getZeroBorder(){
    return const OutlineInputBorder(
      borderSide: BorderSide.none,
    );
  }
}
