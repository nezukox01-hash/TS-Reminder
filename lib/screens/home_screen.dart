import 'package:flutter/material.dart';
import '../widgets/app_page.dart';
import '../widgets/home_option_card.dart';
import '../widgets/summary_card.dart';
import '../widgets/info_row.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPage(
      title: 'TS Reminder',
      actions: const [
        Icon(Icons.notifications_none_rounded, color: Colors.white),
      ],
      child: ListView(
        padding: const EdgeInsets.fromLTRB(20, 8, 20, 24),
        children: [
          GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 14,
            mainAxisSpacing: 14,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            childAspectRatio: 1.02,
            children: const [
              HomeOptionCard(
                title: 'Tasks',
                subtitle: 'Today task control',
                icon: Icons.check_circle_rounded,
                color: Colors.green,
              ),
              HomeOptionCard(
                title: 'Reminder',
                subtitle: 'Exact-time reminder',
                icon: Icons.notifications_active_rounded,
                color: Colors.orange,
              ),
              HomeOptionCard(
                title: 'Stats',
                subtitle: 'Daily progress',
                icon: Icons.bar_chart_rounded,
                color: Colors.blue,
              ),
              HomeOptionCard(
                title: 'Rate My Day',
                subtitle: 'Daily score system',
                icon: Icons.star_rounded,
                color: Colors.purple,
              ),
            ],
          ),
          const SizedBox(height: 16),
          const SummaryCard(
            title: 'Today Summary',
            children: [
              InfoRow(label: 'Current Focus', value: 'Math Practice'),
              SizedBox(height: 10),
              InfoRow(label: 'Tasks Done', value: '2 / 5'),
              SizedBox(height: 10),
              InfoRow(label: 'Next Reminder', value: '2:00 PM'),
              SizedBox(height: 10),
              InfoRow(label: 'Reminder Mode', value: 'Normal'),
              SizedBox(height: 14),
              Text(
                'Stay focused and complete your main tasks before moving to other apps.',
                style: TextStyle(
                  color: Colors.white70,
                  height: 1.4,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
