import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 768;

    return Container(
      width: double.infinity,
      color: const Color(0xFFF8FAFC),
      padding: EdgeInsets.symmetric(
        vertical: isMobile ? 50 : 80,
        horizontal: isMobile ? 20 : 40,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // รูปโปรไฟล์
          CircleAvatar(
            radius: isMobile ? 50 : 65,
            backgroundImage:
            const AssetImage('assets/images/profile/profile.jpg'),
          )
              .animate()
              .scale(duration: 600.ms)
              .fadeIn(duration: 400.ms),

          SizedBox(height: isMobile ? 20 : 25),

          // ชื่อ
          Text(
            'รอสนัน บาฮา',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: isMobile ? 22 : 28,
              color: const Color(0xFF1E293B),
              letterSpacing: 1.1,
            ),
          ),

          const SizedBox(height: 8),

          // ตำแหน่ง
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: isMobile ? 14 : 16,
              vertical: 6,
            ),
            decoration: BoxDecoration(
              color: Colors.tealAccent.withOpacity(0.2),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              'Software Engineer',
              style: TextStyle(
                color: Colors.teal,
                fontWeight: FontWeight.w600,
                fontSize: isMobile ? 14 : 16,
              ),
            ),
          ),

          SizedBox(height: isMobile ? 20 : 25),

          // คำอธิบาย
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: isMobile ? double.infinity : 800,
            ),
            child: Text(
              'บัณฑิตจบใหม่สาขาวิศวกรรมคอมพิวเตอร์ ที่มุ่งมั่นสู่สายอาชีพ Software Engineer '
                  'มีประสบการณ์ในการพัฒนาเว็บและระบบหลังบ้าน (Web & Backend Development) โดยใช้ Java, Spring Boot, Angular และ PostgreSQL '
                  'มีทักษะในการสร้าง RESTful API, จัดการฐานข้อมูล และพัฒนาแอปพลิเคชันที่ใช้งานง่าย '
                  'หลงใหลในการสร้างซอฟต์แวร์ที่มีประสิทธิภาพ และพร้อมเติบโตไปพร้อมกับทีมพัฒนาในสภาพแวดล้อมการทำงานที่ร่วมมือกันอย่างมืออาชีพ',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: isMobile ? 14.5 : 16,
                height: 1.8,
                color: const Color(0xFF475569),
              ),
            ),
          )
              .animate()
              .fadeIn(duration: 600.ms)
              .slideY(begin: 0.2, end: 0),
        ],
      ),
    );
  }
}

// animetion
// class AboutSection extends StatelessWidget {
//   const AboutSection({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         // 🔹 Animated Background (Gradient Moving)
//         AnimatedContainer(
//           duration: const Duration(seconds: 4),
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//               colors: [
//                 Color(0xFFFFFFFF),
//                 Color(0xFFF4F7FB),
//               ],
//             ),
//           ),
//         ).animate().shimmer(duration: 3500.ms, colors: [Colors.white24, Colors.transparent]),
//
//         // 🔹 Floating Blobs Background
//         Positioned(
//           top: 80,
//           left: -40,
//           child: _buildBlob(150, Colors.tealAccent.withOpacity(0.25)),
//         ),
//         Positioned(
//           bottom: 40,
//           right: -30,
//           child: _buildBlob(120, Colors.blueAccent.withOpacity(0.20)),
//         ),
//
//         // MAIN CONTENT
//         Container(
//           width: double.infinity,
//           padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 40),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const CircleAvatar(
//                 radius: 65,
//                 backgroundImage: AssetImage('assets/images/profile/profile.jpg'),
//               ).animate().scale(duration: 600.ms).fadeIn(duration: 400.ms),
//
//               const SizedBox(height: 25),
//
//               Text(
//                 'รอสนัน บาฮา',
//                 style: Theme.of(context).textTheme.headlineSmall?.copyWith(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 28,
//                   color: const Color(0xFF0F172A),
//                   letterSpacing: 1.1,
//                 ),
//               ),
//
//               const SizedBox(height: 8),
//
//               Container(
//                 padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
//                 decoration: BoxDecoration(
//                   color: Colors.tealAccent.withOpacity(0.15),
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: const Text(
//                   'Software Engineer',
//                   style: TextStyle(
//                     color: Colors.teal,
//                     fontWeight: FontWeight.w600,
//                     fontSize: 16,
//                   ),
//                 ),
//               ),
//
//               const SizedBox(height: 25),
//
//               ConstrainedBox(
//                 constraints: const BoxConstraints(maxWidth: 800),
//                 child: const Text(
//                   'บัณฑิตจบใหม่สาขาวิศวกรรมคอมพิวเตอร์ ที่มุ่งมั่นสู่สายอาชีพ Software Engineer '
//                       'มีประสบการณ์ในการพัฒนาเว็บและระบบหลังบ้าน (Web & Backend Development) โดยใช้ Java, Spring Boot, Angular และ PostgreSQL '
//                       'มีทักษะในการสร้าง RESTful API, จัดการฐานข้อมูล และพัฒนาแอปพลิเคชันที่ใช้งานง่าย '
//                       'หลงใหลในการสร้างซอฟต์แวร์ที่มีประสิทธิภาพ และพร้อมเติบโตไปพร้อมกับทีมพัฒนาในสภาพแวดล้อมการทำงานที่ร่วมมือกันอย่างมืออาชีพ',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 16,
//                     height: 1.8,
//                     color: Color(0xFF334155),
//                   ),
//                 ),
//               ).animate().fadeIn(duration: 600.ms).slideY(begin: 0.2, end: 0),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
//
// // 🎨 Floating Blob Widget
// Widget _buildBlob(double size, Color color) {
//   return Container(
//     width: size,
//     height: size,
//     decoration: BoxDecoration(
//       color: color,
//       shape: BoxShape.circle,
//       boxShadow: [
//         BoxShadow(
//           color: color.withOpacity(0.3),
//           blurRadius: 40,
//           spreadRadius: 20,
//         )
//       ],
//     ),
//   ).animate(onPlay: (controller) => controller.repeat()).moveY(
//     begin: -10,
//     end: 10,
//     duration: 4.seconds,
//     curve: Curves.easeInOut,
//   ).moveX(
//     begin: -5,
//     end: 5,
//     duration: 3.seconds,
//     curve: Curves.easeInOut,
//   );
// }

