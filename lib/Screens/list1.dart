import 'package:flutter/material.dart';
class MyList extends StatelessWidget {
  const MyList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 200,
      child:Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/z.jpg',fit: BoxFit.cover,width: 20,),
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('d'),
              Text('d'),
              Text('d'),
            ],
          )),
          ElevatedButton(onPressed: (){}, child: Text('helo'))
        ],
      ),
    );
  }
}
