import 'package:flutter/material.dart';
import 'package:harpi/core/route.dart';
import 'package:harpi/theme/colors.dart';
import 'package:harpi/views/home.view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AppRouter _appRouter = AppRouter();

  @override
  void dispose() {
    _appRouter.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Harpi',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Roboto',
      ).copyWith(
          primaryColor: mainGreen,
          accentColor: mainGreen,
          backgroundColor: Colors.transparent,
          scaffoldBackgroundColor: Colors.transparent,
          bottomSheetTheme:
              BottomSheetThemeData(backgroundColor: Colors.transparent)),
      initialRoute: Homeview.routeName,
      onGenerateRoute: _appRouter.generateRoute,
    );
  }
}
