import 'package:fiverr_complaint_app/Screens/approved_post_screen.dart';
import 'package:fiverr_complaint_app/Screens/block_unblock_screen.dart.dart';
import 'package:fiverr_complaint_app/Screens/pending_post_screen.dart';
import 'package:fiverr_complaint_app/Screens/pending_user_screen.dart';
import 'package:fiverr_complaint_app/Screens/send_notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'list1.dart';
import 'userListScreen.dart';
class DashboardScreen extends StatelessWidget {

  List<Map<String, dynamic>> dataList = [
    {'icon': Icons.notifications, 'title': 'Send Notification'},
    {'icon': Icons.verified_user, 'title': 'Pending User'},
    {'icon': Icons.block, 'title': 'Block/unblock User'},
    {'icon': Icons.pending, 'title': 'Pending Post'},
    {'icon': Icons.person_add, 'title': 'User List'},
    {'icon': Icons.cloud_done, 'title': 'Approve Post'},
    // ... add more items
  ];
  DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: Column(
        children: [
        Expanded(
          flex: 2,
          child: Container(
            width: double.infinity,
          color: Colors.transparent,
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    bottomRight: const Radius.circular(20.0),
                    bottomLeft: const Radius.circular(20.0),
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0,bottom: 50),
                child: Align(
                  alignment: Alignment.bottomLeft,
                    child: Text("DASHBOARD",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 19),)),
              )
          ),
      ),
        ),
          Expanded(
            flex: 4,
              child:Container(
                child: GridView.builder(
                  padding: EdgeInsets.all(20),

                  itemCount: dataList.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 12,
                        mainAxisExtent: 80,
                        childAspectRatio: 120,
                        mainAxisSpacing: 12,
                        crossAxisCount: 2
                    ),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: (){
                          if(index==0){
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>  SendNotification(fromDashboard: true),));
                          }
                          else if(index==1){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => PendingUser(),));

                          }
                          else if(index==2){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => BlockUnblockScreen(),));

                          }
                          else if(index==3){
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>PendignPostScreen(),));

                          }
                          else if(index==4){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => UserList(),));

                          }
                          else if(index==5){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => MyList(),));

                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black26,
                                  offset: Offset(0, 1),
                                  blurRadius: 1.0)
                            ],
                            borderRadius: BorderRadius.circular(4.0),


                          ),

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(dataList[index]['icon']),
                              SizedBox(height: 16,),
                              Text(dataList[index]['title'])
                            ],
                          ),
                        ),
                      );
                    },),
              ),
          )

        ],
      ),
    );
  }
}
