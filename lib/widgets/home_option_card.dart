import 'package:flutter/material.dart';

class HomeOptionCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final String subtitle;

  const HomeOptionCard({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: const LinearGradient(
          colors: [Color(0xFF162B47), Color(0xFF0D1B2E)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        border: Border.all(color: const Color(0xFF223854)),
        boxShadow: const [
          BoxShadow(
            color: Colors.black54,
            blurRadius: 24,
            offset: Offset(0, 14),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 58,
              width: 58,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [color, color.withOpacity(0.55)],
                ),
              ),
              child: Icon(icon, color: Colors.white),
            ),
            const SizedBox(height: 16),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
