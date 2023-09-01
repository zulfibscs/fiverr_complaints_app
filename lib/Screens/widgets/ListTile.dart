import 'package:flutter/material.dart';
class CustomListTile extends StatelessWidget {
  final String userName;
  final String tagList;
  final String userEmail;
  final String urlImg;
  final VoidCallback? btn1Fun;
  final VoidCallback? btn2Fun;
  final bool isBtn1Visible;
  final bool isBtn2Visible;
  final String? btn1Lable;
  final String? btn2Lable;

  CustomListTile({
    required this.userName,
    required this.tagList,
    required this.userEmail,
    required this.urlImg,
     this.btn1Fun,
     this.btn2Fun,
    this.isBtn1Visible=true,
    this.isBtn2Visible=true,
    this.btn1Lable,
    this.btn2Lable,
  }
  );

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return  Card(
        elevation: 4,
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide( color: Colors.white)             ),
        child: ListTile(
          leading: CircleAvatar(
              backgroundImage: AssetImage(urlImg,)),
          // title:Text('User Name',style: TextStyle(fontWeight: FontWeight.bold),
          // ),
          subtitle:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(userName ,style: TextStyle(fontWeight: FontWeight.bold)),
              Text(tagList),
              SizedBox(height: 1,),
              Text(userEmail,style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black)),
            ],
          ),
          trailing: Container(
            width: MediaQuery.of(context).size.width*0.503,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                Visibility(
                  visible: isBtn1Visible,
                  child: ElevatedButton(

                    onPressed:btn1Fun,
                    child: Text(btn1Lable ?? ''),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black, // Background color
                    ),),
                ),
                SizedBox(width: 12,),
                  Visibility(
                    visible: isBtn2Visible,
                    child: ElevatedButton(
                      onPressed: btn1Fun,
                      child: Text(btn2Lable ?? ''),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black, // Background color
                      ),
                    ),
                  ),


              ],
            ),
          ),
        ),
      );
    },);
  }
}
