import 'package:flutter/material.dart';
import 'app_shell.dart';
import 'theme.dart';

class AppLoader extends StatelessWidget {
  const AppLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TS Reminder',
      theme: buildAppTheme(),
      home: const AppShell(),
    );
  }
}
