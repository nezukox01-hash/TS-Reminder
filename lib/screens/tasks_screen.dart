import 'package:flutter/material.dart';
import '../widgets/app_page.dart';
import '../widgets/summary_card.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPage(
      title: 'Tasks',
      actions: const [
        Icon(Icons.add_rounded, color: Colors.white),
      ],
      child: ListView(
        padding: const EdgeInsets.fromLTRB(20, 8, 20, 24),
        children: [
          _taskCard('Math Practice', '1:00 PM', 'High', false),
          const SizedBox(height: 12),
          _taskCard('Physics Revision', '2:00 PM', 'Medium', false),
          const SizedBox(height: 12),
          _taskCard('English Writing', '3:00 PM', 'Low', true),
          const SizedBox(height: 16),
          const SummaryCard(
            title: 'Task Rules',
            children: [
              Text(
                'Tasks will start reminding at exact time. Later we will add Start, Done, Skip, priority logic, and queue handling.',
                style: TextStyle(color: Colors.white70, height: 1.4),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _taskCard(String title, String time, String priority, bool done) {
    final Color chipColor = done ? Colors.green : Colors.blueAccent;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        gradient: const LinearGradient(
          colors: [Color(0xFF162B47), Color(0xFF0D1B2E)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        border: Border.all(color: const Color(0xFF223854)),
      ),
      child: Row(
        children: [
          Container(
            height: 26,
            width: 26,
            decoration: BoxDecoration(
              color: done ? Colors.green : Colors.transparent,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: done ? Colors.green : Colors.white54,
              ),
            ),
            child: done
                ? const Icon(Icons.check_rounded, size: 16, color: Colors.white)
                : null,
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    decoration: done ? TextDecoration.lineThrough : null,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  '$time • $priority Priority',
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: chipColor.withOpacity(0.15),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Text(
              done ? 'Done' : 'Pending',
              style: TextStyle(
                color: done ? Colors.green : Colors.lightBlueAccent,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
