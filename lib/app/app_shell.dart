import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../screens/tasks_screen.dart';
import '../screens/reminder_screen.dart';
import '../screens/stats_screen.dart';
import '../screens/rate_my_day_screen.dart';

class AppShell extends StatefulWidget {
  const AppShell({super.key});

  @override
  State<AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  int currentIndex = 0;

  final List<Widget> pages = const [
    HomeScreen(),
    TasksScreen(),
    ReminderScreen(),
    StatsScreen(),
    RateMyDayScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentIndex,
        height: 72,
        backgroundColor: const Color(0xFF0E2036),
        indicatorColor: Colors.blue.withOpacity(0.22),
        labelTextStyle: WidgetStateProperty.all(
          const TextStyle(fontWeight: FontWeight.w700),
        ),
        onDestinationSelected: (index) {
          setState(() => currentIndex = index);
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.check_circle_rounded),
            label: 'Tasks',
          ),
          NavigationDestination(
            icon: Icon(Icons.notifications_active_rounded),
            label: 'Reminder',
          ),
          NavigationDestination(
            icon: Icon(Icons.bar_chart_rounded),
            label: 'Stats',
          ),
          NavigationDestination(
            icon: Icon(Icons.star_rounded),
            label: 'Rate',
          ),
        ],
      ),
    );
  }
}
