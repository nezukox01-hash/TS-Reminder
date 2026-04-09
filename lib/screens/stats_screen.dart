import 'package:flutter/material.dart';
import '../widgets/app_page.dart';
import '../widgets/summary_card.dart';
import '../widgets/info_row.dart';

class StatsScreen extends StatelessWidget {
  const StatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPage(
      title: 'Stats',
      child: ListView(
        padding: const EdgeInsets.fromLTRB(20, 8, 20, 24),
        children: const [
          SummaryCard(
            title: 'Overview',
            children: [
              InfoRow(label: 'Tasks Done', value: '2'),
              SizedBox(height: 10),
              InfoRow(label: 'Pending Tasks', value: '3'),
              SizedBox(height: 10),
              InfoRow(label: 'Overdue Tasks', value: '1'),
              SizedBox(height: 10),
              InfoRow(label: 'Saved Reports', value: '1'),
            ],
          ),
        ],
      ),
    );
  }
}
