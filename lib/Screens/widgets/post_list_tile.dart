import 'package:flutter/material.dart';
class PostListTileWidget extends StatelessWidget {
  final String userName;
  final String des;
  final VoidCallback? btnFun;
  final String btnLable;
   PostListTileWidget({super.key,required this.userName,required this.des,required this.btnLable,required this.btnFun});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 12,
      itemBuilder: (context, index) {
        return Card(
          elevation: 4,
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide( color: Colors.white)             ),
          child: ListTile(
            minVerticalPadding: 4,
            horizontalTitleGap: 10,
            title:Text(userName,style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle:Text(des,
              maxLines: 3,overflow: TextOverflow.ellipsis,
            ),
            trailing: ElevatedButton(
              onPressed: btnFun,
              child: Text(btnLable),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black, // Background color
              ),
            ),
          ),
        );

    },);
  }
}
