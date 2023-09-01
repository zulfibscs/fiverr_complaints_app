import 'package:fiverr_complaint_app/Screens/approved_post_screen.dart';
import 'package:fiverr_complaint_app/Screens/widgets/post_list_tile.dart';
import 'package:flutter/material.dart';
class PendignPostScreen extends StatelessWidget {
  const PendignPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text('Pending Post'),
        leading: GestureDetector(
            child: Icon(Icons.arrow_back_ios),
          onTap: (){    Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: PostListTileWidget(userName: 'Buyer Id', des: "What is Lorem Ipsum "
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
            btnLable: 'View', btnFun: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => ApprovedPostScreen(),));
            })
      )




    );
  }
}
