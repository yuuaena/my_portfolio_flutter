import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFFF8FAFC), // สีพื้นอ่อน ดูสะอาดและสบายตา
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // รูปโปรไฟล์
          const CircleAvatar(
            radius: 65,
            backgroundImage: AssetImage('assets/images/profile.jpg'),
          ).animate().scale(duration: 600.ms).fadeIn(duration: 400.ms),

          const SizedBox(height: 25),

          // ชื่อ
          Text(
            'รอสนัน บาฮา',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 28,
              color: const Color(0xFF1E293B),
              letterSpacing: 1.1,
            ),
          ),

          const SizedBox(height: 8),

          // ตำแหน่ง
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.tealAccent.withOpacity(0.2),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              'Software Engineer',
              style: TextStyle(
                color: Colors.teal,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ),

          const SizedBox(height: 25),

          // คำอธิบาย
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 800),
            child: const Text(
              'บัณฑิตจบใหม่สาขาวิศวกรรมคอมพิวเตอร์ ที่มุ่งมั่นสู่สายอาชีพ Software Engineer '
                  'มีประสบการณ์จริงในการพัฒนาเว็บและระบบหลังบ้าน (Web & Backend Development) โดยใช้ Java, Spring Boot, Angular และ PostgreSQL '
                  'มีทักษะในการสร้าง RESTful API, จัดการฐานข้อมูล และพัฒนาแอปพลิเคชันที่ใช้งานง่าย '
                  'หลงใหลในการสร้างซอฟต์แวร์ที่มีประสิทธิภาพ และพร้อมเติบโตไปพร้อมกับทีมพัฒนาในสภาพแวดล้อมการทำงานที่ร่วมมือกันอย่างมืออาชีพ',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                height: 1.8,
                color: Color(0xFF475569),
              ),
            ),
          ).animate().fadeIn(duration: 600.ms).slideY(begin: 0.2, end: 0),
        ],
      ),
    );
  }
}


// class AboutSection extends StatelessWidget {
//   const AboutSection({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 550,
//       width: double.infinity,
//       decoration: const BoxDecoration(
//         gradient: LinearGradient(
//           colors: [Color(0xFF1E1E2F), Color(0xFF2C2C54)],
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//         ),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: const [
//           Text(
//             "👋 Hi, I'm Thanakorn",
//             style: TextStyle(
//               fontSize: 36,
//               fontWeight: FontWeight.bold,
//               color: Colors.tealAccent,
//             ),
//           ),
//           SizedBox(height: 16),
//           Text(
//             "A Web & Backend Developer who loves building efficient,\nuser-friendly and modern software experiences.",
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               fontSize: 18,
//               color: Colors.white70,
//               height: 1.6,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
