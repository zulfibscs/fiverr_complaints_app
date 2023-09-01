import 'package:fiverr_complaint_app/Screens/pending_user_screen.dart';
import 'package:fiverr_complaint_app/Screens/widgets/ListTile.dart';
import 'package:flutter/material.dart';

class BlockUnblockScreen extends StatefulWidget {
  @override
  _BlockUnblockScreenState createState() => _BlockUnblockScreenState();
}

class _BlockUnblockScreenState extends State<BlockUnblockScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // give the tab bar a height [can change hheight to preferred height]
            Container(
              height: 30,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(
                  25.0,
                ),
              ),
              child: TabBar(
                overlayColor: MaterialStateProperty.all(Colors.transparent),
                controller: _tabController,
                // give the indicator a decoration (color and border radius)
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0,),
                  color: Colors.black,
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                tabs: [
                  // first tab [you can add an icon using the icon property]
                  Tab(
                    text: 'Block',
                  ),

                  // second tab [you can add an icon using the icon property]
                  Tab(
                    text: 'Ublock',
                  ),
                ],
              ),
            ),
            // tab bar view here
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  CustomListTile(
                    userName: 'User Name',
                    tagList: '_@Fiverr_id',
                    userEmail: 'abc@gmail.com',
                    urlImg: 'assets/images/baby.jpg',
                    btn1Lable: "Block",
                    isBtn2Visible: false,btn1Fun: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => BlockUnblockScreen(),));
                  },),
                  CustomListTile(
                    userName: 'User Name',
                    tagList: 'tagList',
                    userEmail: 'abc@gmail.com',
                    urlImg: 'assets/images/child.jpg',
                    btn1Lable: 'Unblock',
                    btn1Fun: (){},
                    isBtn2Visible: false,

                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}