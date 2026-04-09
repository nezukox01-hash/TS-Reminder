import 'package:flutter/material.dart';
import '../widgets/app_page.dart';
import '../widgets/summary_card.dart';
import '../widgets/info_row.dart';

class ReminderScreen extends StatelessWidget {
  const ReminderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPage(
      title: 'Reminder',
      child: ListView(
        padding: const EdgeInsets.fromLTRB(20, 8, 20, 24),
        children: const [
          SummaryCard(
            title: 'Reminder Engine',
            children: [
              InfoRow(label: 'Mode', value: 'Normal'),
              SizedBox(height: 10),
              InfoRow(label: 'Soft Voice', value: 'Off'),
              SizedBox(height: 10),
              InfoRow(label: 'Exact-Time Reminder', value: 'On'),
              SizedBox(height: 10),
              InfoRow(label: 'Next Task', value: 'Physics Revision'),
              SizedBox(height: 14),
              Text(
                'In the next step, this screen will control exact-time reminders, task switching, and soft voice alerts.',
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
