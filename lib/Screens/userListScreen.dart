import 'package:fiverr_complaint_app/Screens/block_unblock_screen.dart.dart';
import 'package:fiverr_complaint_app/Screens/widgets/listTile.dart';
import 'package:flutter/material.dart';
class UserList extends StatefulWidget {
  const UserList({super.key});

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        bottom: const PreferredSize(
          preferredSize:  Size.fromRadius(0.0),
          child:    Text('Pending User',style: TextStyle(fontFamily: 'ProximaNova',fontSize:18,fontWeight: FontWeight.w600),),
        ),
        leading: GestureDetector(
          child: Icon(Icons.arrow_back_ios),
          onTap: (){    Navigator.pop(context);
          },
        ),
      ),
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6,vertical: 15),
        child: CustomListTile(
          userName: 'User',
          tagList: '_@Fiverr_id',
          userEmail: 'abc@gmail.com',
          urlImg: 'assets/images/girl.jpg',
          btn1Lable: 'View',
          isBtn1Visible: true,
          btn1Fun: (){},

          isBtn2Visible: false,
          btn2Lable: '',
          btn2Fun: (){},

        )),
    );
  }
}
