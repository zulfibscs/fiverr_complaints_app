import 'package:fiverr_complaint_app/Screens/widgets/listTile.dart';
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
      appBar: AppBar(
        title: Text('Block/Unblock User'),
        leading: GestureDetector(
          child: Icon(Icons.arrow_back_ios),
          onTap: (){    Navigator.pop(context);
          },
        ),
      ),
      body:
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6,vertical: 15),
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
            SizedBox(height: 19,),
            // tab bar view here
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  CustomListTile(
                    userName: 'Zulfi',
                    tagList: '_@Fiverr_id',
                    userEmail: 'abc@gmail.com',
                    urlImg: 'assets/images/baby.jpg',
                    btn1Lable: "Block",
                    isBtn2Visible: false,btn1Fun: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => BlockUnblockScreen(),));
                  },),
                  CustomListTile(
                    userName: 'Zulfi',
                    tagList: 'tagList',
                    userEmail: 'userEmail',
                    urlImg: 'assets/images/girl.jpg',
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