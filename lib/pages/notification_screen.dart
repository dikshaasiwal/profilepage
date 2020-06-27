import 'package:flutter/material.dart';
import 'package:user_profile_settings_app/bloc/drawer_bloc.dart';
import 'package:user_profile_settings_app/widgets/custom_switch.dart';
final Shader linearGradient = LinearGradient(
  colors: <Color>[Colors.lightBlue, Colors.blue],
).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
class NotificationScreen extends StatelessWidget with DrawerStates{
  @override
  Widget build(BuildContext context) {
    return Column(


          children: <Widget>[
         CustomSwitch(
          isOn: false,
          activeBorderColor: Colors.white,
          inactiveBorderColor: Theme.of(context).primaryColor,
          borderWidth: 1,
          padding: 8,
          activeColor: Theme.of(context).primaryColor,
          inactiveColor: Theme.of(context).scaffoldBackgroundColor,
          activeText: "ON",
          inactiveText: "OFF",
          activeTextStyle: TextStyle(
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
          inactiveTextStyle: TextStyle(
            color: Theme.of(context).primaryColor,
          ),
          activeThumbColor: Theme.of(context).scaffoldBackgroundColor,
          inactiveThumbColor: Theme.of(context).scaffoldBackgroundColor,
          thumbHeight: 20,

        ),
            SizedBox(
              height: 20,
              width: 200,
              child: Divider(
                color: Colors.teal.shade700,
              ),
            ),
            Text(
              'Hydrate yourself!',
              style: new TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  foreground: Paint()..shader = linearGradient),
            )
    ]

    );
  }
}
