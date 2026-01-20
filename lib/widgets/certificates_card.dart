import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:url_launcher/url_launcher.dart';

import '../sections/certificates.dart';

// class CertiCard extends StatelessWidget {
//   final Map<String, String> cert;
//   final VoidCallback onTap;
//
//   const CertiCard({
//     super.key,
//     required this.cert,
//     required this.onTap,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return MouseRegion(
//       cursor: SystemMouseCursors.click,
//       child: GestureDetector(
//         onTap: onTap,
//         child: Container(
//           width: 300,
//           height: 380,
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(18),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black.withOpacity(0.1),
//                 blurRadius: 12,
//                 offset: const Offset(0, 6),
//               ),
//             ],
//           ),
//           child: Column(
//             children: [
//               ClipRRect(
//                 borderRadius:
//                 const BorderRadius.vertical(top: Radius.circular(18)),
//                 child: Image.asset(
//                   cert['image']!,
//                   height: 190,
//                   width: double.infinity,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(14),
//                 child: Column(
//                   children: [
//                     Text(
//                       cert['title']!,
//                       textAlign: TextAlign.center,
//                       style: const TextStyle(
//                         fontSize: 17,
//                         fontWeight: FontWeight.bold,
//                         color: Color(0xFF1E293B),
//                       ),
//                     ),
//                     const SizedBox(height: 8),
//                     Text(
//                       cert['issuer']!,
//                       textAlign: TextAlign.center,
//                       style: const TextStyle(
//                         fontSize: 14,
//                         color: Color(0xFF475569),
//                       ),
//                     ),
//                     const SizedBox(height: 12),
//                     Chip(
//                       label: Text('Year: ${cert['year']}'),
//                       backgroundColor: Colors.tealAccent.withOpacity(0.25),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
class CertiCard extends StatelessWidget {
  final Map<String, String> cert;
  final VoidCallback onTap;

  const CertiCard({
    super.key,
    required this.cert,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: cardWidth,
        height: cardHeight,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
          border: Border.all(
            color: Colors.tealAccent.withOpacity(0.25),
          ),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius:
              const BorderRadius.vertical(top: Radius.circular(18)),
              child: Image.asset(
                cert['image']!,
                height: 170,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                const EdgeInsets.fromLTRB(16, 14, 16, 12),
                child: Column(
                  children: [
                    Text(
                      cert['title']!,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF1E293B),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      cert['issuer']!,
                      textAlign: TextAlign.center,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Color(0xFF475569),
                      ),
                    ),
                    const Spacer(),
                    // const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.only(bottom: 12), // ← เพิ่มระยะห่างตรงนี้
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 6,
                        ),
                      decoration: BoxDecoration(
                        color: Colors.tealAccent.withOpacity(0.25),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Text(
                        cert['year']!,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.teal,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


