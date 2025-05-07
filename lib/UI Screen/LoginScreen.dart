import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:restaurent_order_app/UI%20Screen/ForgetPasswordSetScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController =TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  _SubmitButton(){
    Navigator.pushNamedAndRemoveUntil(context, '/NavigatorStylePage', (predicate)=>false);
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.blueGrey.shade500,
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage('https://i.pinimg.com/564x/7f/55/da/7f55da089f25976106d8433159d1e1a0.jpg'),fit: BoxFit.cover)
            ),
            child: Column(
              children: [
                Form(
                    child: Column(
                                      children: [
                    SizedBox(
                      height: 200,
                    ),
                    Center(
                      child: SizedBox(
                        height: 350,
                        width: 400,
                        child: Card(
                          elevation: 3,
                          color: Colors.transparent,
                          child: Column(
                            children: [
                              SizedBox(height: 20,),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 20),
                                child: TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  controller: _emailController,
                                  decoration: InputDecoration(

                                      border: OutlineInputBorder(),
                                      hintText: 'Enter Email',

                                    ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 20),
                                child: TextFormField(
                                  controller: _passwordController,
                                  keyboardType: TextInputType.text,
                                  obscureText: true,
                                  textInputAction: TextInputAction.next,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: 'Enter Password',

                                      ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 20),
                                child: ElevatedButton(
                                    onPressed:_SubmitButton, child: Text('Login')),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: 'Forget Password',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushNamed(
                                  context, '/EmailVerificationScreen');
                            }),
                    ])),
                    const SizedBox(
                      height: 20,
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Don't have an Account? ",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white, // ✅ color add
                            ),
                          ),
                          TextSpan(
                            text: "Sign Up ",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueAccent, // ✅ clickable text color
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushNamed(context, '/RegistrationScreen');
                              },
                          ),
                        ],
                      ),
                    ),

                                      ],
                                    ))
              ],
            ),
          )),
    );
  }
}
