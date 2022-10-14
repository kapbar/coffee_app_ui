import 'package:coffee_app_ui/ui/home_page/home_page.dart';
import 'package:coffee_app_ui/ui/home_page/home_page_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        create: (_) => HomePageViewModel(),
        child: const HomePage(),
      ),
      theme: ThemeData(
        textTheme: GoogleFonts.soraTextTheme(Theme.of(context).textTheme),
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
      ),
    );
  }
}
