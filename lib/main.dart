import 'package:budget_buddy_1/common/color_extension.dart';
import 'package:budget_buddy_1/view/login/welcome_view.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'data/model/add_date.dart';

void main() async{
  await Hive.initFlutter();
  Hive.registerAdapter(AdddataAdapter());
  await Hive.openBox<Add_data>('data');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'budgetbuddy',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
        fontFamily: "Inter",
        colorScheme: ColorScheme.fromSeed(
        seedColor: TColor.primary,
          surface: TColor.gray80,
          primary: TColor.primary,
          primaryContainer: TColor.gray60,
          secondary: TColor.secondary,
        ),
          useMaterial3: false,
        ),
      home: const WelcomeView(),
    );
  }
}