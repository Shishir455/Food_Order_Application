import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:restaurent_order_app/Widgets/CustomAppBar.dart';

class Menuscreen extends StatefulWidget {
  const Menuscreen({super.key});

  @override
  State<Menuscreen> createState() => _MenuscreenState();
}

class _MenuscreenState extends State<Menuscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage('https://i.pinimg.com/474x/25/d4/e4/25d4e4f91c5ca4d53cf6aa125239b485.jpg'),fit: BoxFit.cover),
        ),



        child:ListView.builder(itemBuilder: (context,index){
          return Card(
            color: Colors.black54,
            child: ListTile(
             title: Text("Name of Menu",style: Theme.of(context).textTheme.bodyMedium),
              leading: SizedBox(
                height: 50,
                width: 50,
                child: CircleAvatar(
                  backgroundImage: NetworkImage("https://hips.hearstapps.com/hmg-prod/images/chicken-burgers-index-667b185b5f528.jpg?crop=0.500xw:1.00xh;0.282xw,0&resize=1200:*"),
                ),
              ),
              subtitle: Text('Price : 20\$ ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white),),
              
            ),
          );
        })
     
       ),

      ),
    );
  }
}
