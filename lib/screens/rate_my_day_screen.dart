import 'package:flutter/material.dart';
import '../widgets/app_page.dart';
import '../widgets/summary_card.dart';

class RateMyDayScreen extends StatelessWidget {
  const RateMyDayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPage(
      title: 'Rate My Day',
      child: ListView(
        padding: const EdgeInsets.fromLTRB(20, 8, 20, 24),
        children: const [
          SummaryCard(
            title: 'Daily Rating',
            children: [
              Text(
                'Later this page will let you rate your day from 1 to 10 and save a short daily summary.',
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
