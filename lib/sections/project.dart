import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/project_card.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../widgets/project_card.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final projects = [
      {
        'title': 'Job Tracker System',
        'description':
        'ระบบติดตามการสมัครงาน พัฒนาโดยใช้ Spring Boot และ MySQL',
        'link': 'https://github.com/yourusername/job-tracker',
        'images': [
          'assets/images/certi6022018.jpg',
          'assets/images/certi6022018.jpg',
          'assets/images/certi12072019.jpg',
          'assets/images/certi12072019.jpg',
          'assets/images/certi12072019.jpg',
          'assets/images/certi12072019.jpg',
          'assets/images/certi12072019.jpg',
          'assets/images/certi12072019.jpg',
          'assets/images/certi12072019.jpg',
          'assets/images/certi12072019.jpg',
          'assets/images/certi12072019.jpg',
        ],
      },
      {
        'title': 'Portfolio Website',
        'description':
        'เว็บ Portfolio พัฒนาโดย Flutter Web ',
        'link': 'https://github.com/yourusername/flutter-portfolio',
        'images': [
        ],
      },
      {
        'title': 'Online Learning Management System (LMS)',
        'description':
        'เว็บ Management System For Special Educational Institutions พัฒนาโดย Angular , Spring Boot และ PostgreSQL',
        'link': 'https://github.com/yourusername/flutter-portfolio',
        'images': [
        ],
      }
    ];

    return Container(
      color: const Color(0xFFEEF2FB),
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 40),
      child: Column(
        children: [
          Text(
            '💼 Projects',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: const Color(0xFF161B22),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'ผลงานด้านการพัฒนาเว็บและระบบที่เคยสร้างขึ้น',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF000000),
            ),
          ),
          const SizedBox(height: 30),
          Column(
            children: projects
                .map(
                  (p) => ProjectCard(
                    title: p['title'].toString(),
                    description: p['description'].toString(),
                    link: p['link'].toString(),
                    images: List<String>.from(p['images'] as List),
              ),
            )
                .toList(),
          ),
        ],
      ),
    );
  }
}

