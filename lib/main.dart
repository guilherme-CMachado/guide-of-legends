import 'package:flutter/material.dart';
import 'package:guide_of_legends/models/champions.dart';
import 'package:guide_of_legends/models/settings.dart';
import 'package:guide_of_legends/screen/welcome/profile/profile.dart';
import 'package:guide_of_legends/screen/welcome/welcome_screen.dart';
import 'package:guide_of_legends/services/lol_service.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final LOLService _lolService = LOLService();
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        FutureProvider<List<Champion>>(
          create: (context) => _lolService.fetchChampions(),
        ),
        ChangeNotifierProvider<Settings>(
          create: (context) => Settings(),
        )
      ],
      child: Consumer<Settings>(
        builder: (context, settings, child) {
          return MaterialApp(
            title: "Guide of Legends",
            theme: settings.themeData,
            debugShowCheckedModeBanner: false,
            initialRoute: "/",
            routes: {
              "/": (context) => WelcomeScreen(),
              "/profile": (context) => Profile(),
            },
          );
        },
      ),
    );
  }
}
