import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:restaurent_order_app/Widgets/CustomAppBar.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  TextEditingController _FirstNameController =TextEditingController();
  TextEditingController _LastNameController =TextEditingController();
  TextEditingController _emailController =TextEditingController();
  TextEditingController _PasswordController =TextEditingController();
  TextEditingController _PhoneNumberController =TextEditingController();
  Widget build(BuildContext context) {

    return SafeArea(child: Scaffold(

      backgroundColor: Colors.blueGrey.shade500,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 1000,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage('https://img.freepik.com/free-photo/flat-lay-arrangement-with-salad-box-sauce_23-2148247883.jpg'),fit: BoxFit.cover)
              ),
              child: Form(child: Column(
                children: [
                  SizedBox(height: 100,),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.text,
                      controller: _emailController,
                      decoration: InputDecoration(
            
                          border: OutlineInputBorder(),
                          hintText: 'First Name:',
            
                         ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.text,
                      controller: _LastNameController,
                      decoration: InputDecoration(
            
                          border: OutlineInputBorder(),
                          hintText: 'Last Name:',
                          ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,
                      controller: _emailController,
                      decoration: InputDecoration(
            
                          border: OutlineInputBorder(),
                          hintText: 'Email Address:',
                          ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      controller: _PasswordController,
                      obscureText: true,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
            
                          border: OutlineInputBorder(),
                          hintText: 'Password:',
                         ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.phone,
                      controller: _PhoneNumberController,
                      decoration: InputDecoration(
            
                          border: OutlineInputBorder(),
                          hintText: 'Mobile No:',
                         ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                    child: ElevatedButton(onPressed:(){
                        Navigator.pushNamed(context, '/LoginScreen');
            
                    }, child: Text('Registration')),
                  ),
                  RichText(text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Already Have an Account?',
                        style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)
            
                      ),
                      TextSpan(
                          text: 'Sign In',
                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.blue),
                        recognizer:TapGestureRecognizer()..onTap=(){
                            Navigator.pushNamed(context, '/LoginScreen');
                        }
            
                      )
                    ]
                  ))
                ],
              )),
            ),
          ],
        ),
      ),
    ));
  }
}
