import 'package:flutter/material.dart';
import 'package:fiverr_complaint_app/Screens/widgets/profile_textFormField.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Profile'),),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22,vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 69,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 65,
                    backgroundImage: AssetImage('assets/images/profile.png',),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:EdgeInsets.only(left: 24,bottom: 3,top: 28),
                  child: Text('Name',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),)),
              CustomTextFormField(hintText: 'Zulfiqar Ali', suffixIcon: Icons.edit),
              Padding(
                  padding:EdgeInsets.only(left: 24,bottom: 3,top: 38),
                  child: Text('Email',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),)),
              CustomTextFormField(hintText: 'abc@gmail.com', suffixIcon: Icons.edit),
              Padding(
                  padding:EdgeInsets.only(left: 24,bottom: 3,top: 38),
                  child: Text('Gender',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),)),
              CustomTextFormField(hintText: 'Male'),
            ],
          ),
        ),
      ),
    );
  }
}
