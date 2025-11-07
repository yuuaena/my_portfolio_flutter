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
    return Container(
      color: const Color(0xFFF8FAFC), // สีพื้นอ่อนเหมือน AboutSection
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // หัวข้อหลัก
          Text(
            '🧠 Skills',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 26,
              color: const Color(0xFF1E293B),
              letterSpacing: 1.1,
            ),
          ),

          const SizedBox(height: 10),

          // คำอธิบายสั้น ๆ
          const Text(
            'ทักษะด้านการพัฒนาเว็บและซอฟต์แวร์ที่เชี่ยวชาญ',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF64748B),
            ),
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 30),

          // Chips แสดงทักษะ
          Wrap(
            spacing: 18,
            runSpacing: 18,
            alignment: WrapAlignment.center,
            children: skills
                .map(
                  (s) => Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      blurRadius: 6,
                      offset: const Offset(0, 3),
                    ),
                  ],
                  border: Border.all(
                    color: Colors.tealAccent.withOpacity(0.3),
                    width: 1,
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                    horizontal: 16, vertical: 10),
                child: Text(
                  s,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color(0xFF334155),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ).animate().fadeIn(duration: 400.ms).moveY(begin: 10, end: 0),
            )
                .toList(),
          ),
        ],
      ),
    );
  }
}

// class SkillsSection extends StatelessWidget {
//   const SkillsSection({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final List<Map<String, dynamic>> skills = [
//       {'name': 'Flutter', 'color': Colors.blueAccent},
//       {'name': 'Spring Boot', 'color': Colors.greenAccent},
//       {'name': 'Angular', 'color': Colors.redAccent},
//       {'name': 'PostgreSQL', 'color': Colors.cyanAccent},
//       {'name': 'Git & GitHub', 'color': Colors.orangeAccent},
//     ];
//
//     return Container(
//       width: double.infinity,
//       padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
//       decoration: const BoxDecoration(
//         gradient: LinearGradient(
//           colors: [Color(0xFF0F2027), Color(0xFF203A43), Color(0xFF2C5364)],
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter,
//         ),
//       ),
//       child: Column(
//         children: [
//           const Text(
//             "💻 My Skills",
//             style: TextStyle(
//               fontSize: 28,
//               fontWeight: FontWeight.bold,
//               color: Colors.tealAccent,
//             ),
//           ),
//           const SizedBox(height: 40),
//           Wrap(
//             spacing: 20,
//             runSpacing: 20,
//             children: skills.map((skill) {
//               final color = skill['color'] as Color;
//               final name = skill['name'] as String;
//
//               return AnimatedContainer(
//                 duration: const Duration(milliseconds: 300),
//                 padding: const EdgeInsets.all(20),
//                 width: 150,
//                 decoration: BoxDecoration(
//                   color: Colors.black.withOpacity(0.5),
//                   borderRadius: BorderRadius.circular(16),
//                   boxShadow: [
//                     BoxShadow(
//                       color: color.withOpacity(0.5),
//                       blurRadius: 8,
//                       offset: const Offset(0, 4),
//                     ),
//                   ],
//                 ),
//                 child: Center(
//                   child: Text(
//                     name,
//                     style: TextStyle(
//                       color: color,
//                       fontSize: 18,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                 ),
//               );
//             }).toList(),
//           )
//         ],
//       ),
//     );
//   }
// }


