import 'package:flutter/material.dart';
class DashboardGridViewWidget extends StatefulWidget {
  const DashboardGridViewWidget({super.key});

  @override
  State<DashboardGridViewWidget> createState() => _DashboardGridViewWidgetState();
}

class _DashboardGridViewWidgetState extends State<DashboardGridViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        padding: EdgeInsets.all(20),

        itemCount: 2,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 12,
            mainAxisExtent: 90,
            mainAxisSpacing: 12,
            crossAxisCount: 2
        ),
        itemBuilder: (context, index) {
          return Container(
            width: 30,
            height: 200,
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
                Icon(Icons.doorbell_outlined,size: 33,),
                SizedBox(height: 16,),
                Text('Bell')
              ],
            ),
          );
        },),
    );
  }
}
