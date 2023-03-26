import 'package:flutter/material.dart';
import 'package:mirror_wall_project/screen/all_in_one/provider/home_provider.dart';
import 'package:mirror_wall_project/screen/all_in_one/view/screens.dart';
import 'package:mirror_wall_project/screen/web_screen.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => Home_p(),)
  ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => home_screen(),
        'screen_2':(context) => screen_2(),
      },
    ),
  ),
  );
}