import 'package:flutter/material.dart';

class Emailverificationscreen extends StatefulWidget {
  const Emailverificationscreen({super.key});

  @override
  State<Emailverificationscreen> createState() => _EmailverificationscreenState();
}

class _EmailverificationscreenState extends State<Emailverificationscreen> {
  @override
  TextEditingController _emailverifycontroller = TextEditingController();

  _onSubmit(){
    Navigator.pushNamed(context, '/PinVerification');
  }

  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return  SafeArea(child: Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage("https://static.vecteezy.com/system/resources/previews/049/887/312/non_2x/email-verification-concept-receiving-incoming-email-sending-and-receiving-verification-email-can-be-used-for-web-page-banner-mobile-app-flat-illustration-isolated-on-background-vector.jpg"),fit: BoxFit.fitHeight)
        ),
        child: Column(
          children: [
            Form(
              child: Column(
              
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 200,
                  ),
                  Text('Verify Your Email',style: theme.titleLarge!.copyWith(color: Colors.black),),
                  Text('A 6 digit OTP will be sent your email.Please Check.',style: Theme.of(context).textTheme.titleMedium,)
                  ,SizedBox(height: 30,)
                ],
              ),
            )
            ,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
              child: Card(
                color: Colors.black54,
                elevation: 10,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
        
                      child: TextFormField(
                        controller: _emailverifycontroller,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Email Address:'
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                      child: ElevatedButton(onPressed: _onSubmit, child: Text('Verify')),
                    )
                  ],
                ),
              ),
            ),
        
          ],
          
        ),
      ),
    ));
  }
}
