import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppBar({

    super.key,
  });


  @override
  Widget build(BuildContext context) {
    _SubmitButton(){
      Navigator.pushNamed(context, '/LoginScreen');
    }
    return AppBar(
      title: Row(
        children: [
          SizedBox(
              height: 55,
              width: 60,
              child: CircleAvatar(
                backgroundColor: Colors.white,
              )),
          SizedBox(
            width: 20,
          ),
          Column(
            children: [
              Text('UserName:',style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white)),
              Text('Email:',style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white))
            ],
          )
        ],

      ),
      actions: [IconButton(onPressed: _SubmitButton, icon: Icon(Icons.logout_outlined,size: 30,))],
    );
  }


  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}