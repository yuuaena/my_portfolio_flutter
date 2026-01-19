import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  void _openUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF161B22), // เหมือน navbar
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '📞 Contact Me',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: Colors.tealAccent,
              fontWeight: FontWeight.bold,
              fontSize: 26,
              letterSpacing: 1.2,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'หากสนใจร่วมงานหรือติดต่อพูดคุย สามารถติดต่อได้ที่',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 30),

          // ปุ่ม Contact สวย ๆ
          Wrap(
            spacing: 20,
            runSpacing: 15,
            alignment: WrapAlignment.center,
            children: [
              _buildContactButton(
                icon: Icons.email,
                label: 'Email',
                color: Colors.tealAccent,
                onTap: () => _openUrl('mailto:rosnan.baha@gmail.com'),
              ),
              _buildContactButton(
                icon: Icons.code,
                label: 'GitHub',
                color: Colors.white,
                onTap: () => _openUrl('https://github.com/yuuaena'),
              ),
              _buildContactButton(
                icon: Icons.link,
                label: 'LinkedIn',
                color: Colors.blueAccent,
                onTap: () => _openUrl('https://linkedin.com/in/rosnan-baha-tech'),
              ),
            ],
          ).animate().fadeIn(duration: 400.ms).slideY(begin: 0.2, end: 0),
          const SizedBox(height: 40),

          // Footer เล็ก ๆ
          const Text(
            '© 2025 Rosnan Baha | Built with Flutter 💙',
            style: TextStyle(
              color: Colors.white38,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContactButton({
    required IconData icon,
    required String label,
    required Color color,
    required VoidCallback onTap,
  }) {
    return ElevatedButton.icon(
      onPressed: onTap,
      icon: Icon(icon, color: color),
      label: Text(
        label,
        style: TextStyle(
          color: color,
          fontWeight: FontWeight.w600,
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF1E242D), // สีเทาเข้มกว่า background
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: BorderSide(color: color.withOpacity(0.6)),
        ),
        elevation: 5,
        shadowColor: color.withOpacity(0.3),
      ),
    );
  }
}

