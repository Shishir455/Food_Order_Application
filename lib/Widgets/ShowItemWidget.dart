import 'package:flutter/material.dart';

class ShowItemWidget extends StatelessWidget {
  const ShowItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 300,
          width: 200,

          decoration: BoxDecoration(
            color: Colors.red,
          ),

        ),
        const SizedBox(width: 10,),
        Container(
          height: 300,
          width: 200,
          color: Colors.red,
        )
      ],
    );
  }
}