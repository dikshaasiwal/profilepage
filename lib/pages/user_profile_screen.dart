import 'package:flutter/material.dart';
import 'package:user_profile_settings_app/bloc/drawer_bloc.dart';
import 'package:user_profile_settings_app/widgets/custom_switch.dart';
import 'package:user_profile_settings_app/widgets/info_card.dart';

const gender = 'Female';
const email = 'kshitija@gmail.com';
const phone = '+880 123 456 78';
class UserProfileScreen extends StatelessWidget with DrawerStates {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(

      children: <Widget>[

        Text(
          'Kshitija Shekhar',
          style: TextStyle(
            fontSize: 40.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'Source Sans Pro',
          ),
        ),
        Text(
          'Student',
          style: TextStyle(
            fontFamily: 'Source Sans Pro',
            fontSize: 30.0,
            color: Colors.white,//teal[50],
            letterSpacing: 2.5,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 20,
          width: 200,
          child: Divider(
            color: Colors.teal.shade700,
          ),
        ),
        InfoCard(
          text: phone,
          icon: Icons.phone,

        ),
        InfoCard(
          text: email,
          icon: Icons.email,

        ),
        InfoCard(
          text: gender,
          icon: Icons.insert_emoticon,

        ),
        InfoCard(
          text: '17 June 1999',
          icon: Icons.cake,
        ),
      ],

    ))
     , backgroundColor: Colors.cyan[300],);
  }

}
