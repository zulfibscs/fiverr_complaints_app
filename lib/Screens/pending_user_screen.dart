import 'package:fiverr_complaint_app/Screens/block_unblock_screen.dart.dart';
import 'package:fiverr_complaint_app/Screens/widgets/listTile.dart';
import 'package:flutter/material.dart';
class PendingUser extends StatefulWidget {
  const PendingUser({super.key});

  @override
  State<PendingUser> createState() => _PendingUserState();
}

class _PendingUserState extends State<PendingUser> {
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
        child: CustomListTile(userName: 'User', tagList: '_@Fiverr_id', userEmail: 'abc@gmail.com', urlImg: 'assets/images/girl.jpg',btn1Lable: "Decline",btn2Lable: 'Approve',btn1Fun: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => BlockUnblockScreen(),));
        },btn2Fun: (){},),
      ),


    );
  }
}
