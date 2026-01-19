import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  final List<String> skills = const [
    'Flutter',
    'Java',
    'Spring Boot',
    'MySQL',
    'HTML/CSS',
    'Git & GitHub',
    'JavaScript',
    'React',
    'PostgreSQL',
    'Figma',
    'Angular',
    'TypeScript',
    'Node.js',
    'Swagger',
    'JasperReport',
    'CiscoPacketTracer',


  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery
        .of(context)
        .size
        .width;
    final isMobile = width < 768;

    return Container(
      color: const Color(0xFFF8FAFC),
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: isMobile ? 50 : 80,
        horizontal: isMobile ? 20 : 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // หัวข้อหลัก
          Text(
            '🧠 Skills',
            textAlign: TextAlign.center,
            style: Theme
                .of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: isMobile ? 22 : 26,
              color: const Color(0xFF1E293B),
              letterSpacing: 1.1,
            ),
          ),

          const SizedBox(height: 10),

          // คำอธิบาย
          Text(
            'ทักษะด้านการพัฒนาเว็บและซอฟต์แวร์ที่เชี่ยวชาญ',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: isMobile ? 14 : 16,
              color: const Color(0xFF64748B),
            ),
          ),

          SizedBox(height: isMobile ? 24 : 30),

          // Chips แสดงทักษะ
          Wrap(
            spacing: isMobile ? 12 : 18,
            runSpacing: isMobile ? 12 : 18,
            alignment: WrapAlignment.center,
            children: skills.map((s) {
              return SizedBox(
                width: isMobile ? 130 : 160,
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(
                    vertical: isMobile ? 10 : 12,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.18),
                        blurRadius: 6,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    border: Border.all(
                      color: Colors.tealAccent.withOpacity(0.3),
                      width: 1,
                    ),
                  ),
                  child: Text(
                    s,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: isMobile ? 14 : 15,
                      color: const Color(0xFF334155),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              )
                  .animate()
                  .fadeIn(duration: 400.ms)
                  .moveY(begin: 10, end: 0);
            }).toList(),
          ),
        ],
      ),
    );
  }
}


