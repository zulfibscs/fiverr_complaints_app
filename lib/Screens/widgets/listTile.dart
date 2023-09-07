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
    return ListView.builder(
      itemCount: 6,
        itemBuilder: (context, index) {
      return  SizedBox(
        height:  70,
        width: MediaQuery.of(context).size.width - 100,
        child: Card(

          margin: EdgeInsets.symmetric(horizontal: 5,vertical: 4),
          elevation: 4,
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide( color: Colors.white)             ),
          child: ListTile(
            leading: CircleAvatar(
                backgroundImage: AssetImage(urlImg,)),
            // title:Text('User Name',style: TextStyle(fontWeight: FontWeight.bold),
            // ),
            subtitle:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(userName ,style: TextStyle(fontWeight: FontWeight.bold)),
                Text(tagList,style: TextStyle(fontSize: 11),),
                SizedBox(height: 1,),
                Text(userEmail,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 11)),
              ],
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Visibility(
                  visible: isBtn2Visible,
                  child: InkWell(
                    onTap:btn1Fun,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Colors.black,

                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(btn2Lable??"",
                          style: TextStyle(color: Colors.white,fontSize: 12), // Set text color if needed
                        ),
                      ),
                      padding: EdgeInsets.zero, // No padding
                      margin: EdgeInsets.zero, // No margin
                    ),
                  ),
                ),
        SizedBox(width: 10,),
                Visibility(
                  visible:isBtn1Visible,
                  child: InkWell(
                    onTap: btn2Fun,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Colors.black,

                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(btn1Lable??"",
                          style: TextStyle(color: Colors.white,fontSize: 12), // Set text color if needed
                        ),
                      ),
                      padding: EdgeInsets.zero, // No padding
                      margin: EdgeInsets.zero, // No margin
                    ),
                  ),
                )
        ]
          ),
        )
        ),
      );
    });
  }
}
