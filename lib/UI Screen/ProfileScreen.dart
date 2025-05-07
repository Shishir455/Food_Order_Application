import 'package:flutter/material.dart';
import 'package:restaurent_order_app/Widgets/CustomAppBar.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme.titleMedium;
    return SafeArea(
        child: Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        color: Colors.purple.shade100,
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,

              decoration: BoxDecoration(
                  color: Colors.purple,
                  image: DecorationImage(
                      image: NetworkImage(
                        "",
                      ),
                      fit: BoxFit.cover)),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://static.vecteezy.com/system/resources/previews/023/064/422/non_2x/select-contact-photo-flat-gradient-color-ui-icon-put-picture-on-profile-assign-caller-image-simple-filled-pictogram-gui-ux-design-for-mobile-application-isolated-rgb-illustration-vector.jpg"),
              ),
            ),
            Divider(),
            SizedBox(
              height: 300,
              width: 400,
              child: Card(
                elevation: 5,
                color: Colors.purple.shade200,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        'Name: S M Suja Uddin',
                        style: theme,
                      ),
                      Text(
                        'Id: ********',
                        style: theme,
                      ),
                      Text(
                        'Email: Smsujauddin63@gmail.com',
                        style: theme,
                      ),
                      Text(
                        'Phone: ************',
                        style: theme,
                      ),
                      Text(
                        'Address: **********',
                        style: theme,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
