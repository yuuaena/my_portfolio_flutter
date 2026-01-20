import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../widgets/certificates_card.dart';

// class CertificatesSection extends StatelessWidget {
//   const CertificatesSection({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final certificates = [
//       {
//         'title': 'Yala Technical College',
//         'issuer': 'English In And Out Campus School Program',
//         'image': 'assets/images/certi/certi22082017.jpg',
//         'year': '2017'
//       },
//       {
//         'title': 'มหาวิทยาลัยนราธิวาสราชนครินทร์',
//         'issuer':
//         'การแข่งขันทักษะการประกอบคอมพิวเตอร์ ติดตั้งระบบปฏิบัติการและซอฟต์แวร์',
//         'image': 'assets/images/certi/certi6022018.jpg',
//         'year': '2018'
//       },
//       {
//         'title': 'สำนักงานคณะกรรมการการอาชีวศึกษา',
//         'issuer':
//         'ร่วมจัดแสดงนิทรรศการ เมืองเทคโนโลยี นวัตกรรม สิ่งประดิษฐ์ และหุ่นยนต์',
//         'image': 'assets/images/certi/certi26122018.jpg',
//         'year': '2018'
//       },
//       {
//         'title': 'กสท โทรคมนาคม',
//         'issuer':
//         'ฝึกงาน ณ แผนกปฏิบัติการโทรคมนาคม สำนักงานบริการลูกค้า กสท ยะลา',
//         'image': 'assets/images/certi/certi12072019.jpg',
//         'year': '2019'
//       },
//     ];
//
//     return Container(
//       color: const Color(0xFFF0F3F7),
//       width: double.infinity,
//       padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 40),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           // หัวข้อ
//           Text(
//             '🏅 Certificates',
//             style: Theme.of(context).textTheme.headlineSmall?.copyWith(
//               fontWeight: FontWeight.bold,
//               fontSize: 26,
//               color: const Color(0xFF1E293B),
//               letterSpacing: 1.1,
//             ),
//           ).animate().fade(duration: 500.ms).slideY(begin: -0.2, end: 0),
//
//           const SizedBox(height: 10),
//
//           const Text(
//             'เกียรติบัตรและผลงานที่ได้รับการรับรองจากหน่วยงานต่าง ๆ',
//             style: TextStyle(
//               fontSize: 16,
//               color: Color(0xFF64748B),
//             ),
//             textAlign: TextAlign.center,
//           ),
//
//           const SizedBox(height: 40),
//
//           // Grid ของใบรับรอง
//           Wrap(
//             spacing: 24,
//             runSpacing: 24,
//             alignment: WrapAlignment.center,
//             children: certificates.map((cert) {
//               return MouseRegion(
//                 cursor: SystemMouseCursors.click,
//                 child: GestureDetector(
//                   onTap: () {
//                     // เปิดภาพแบบเต็มหน้าจอ
//                     showDialog(
//                       context: context,
//                       builder: (_) => Dialog(
//                         backgroundColor: Colors.transparent,
//                         insetPadding: EdgeInsets.zero,
//                         child: Stack(
//                           alignment: Alignment.center,
//                           children: [
//                             GestureDetector(
//                               onTap: () => Navigator.pop(context),
//                               child: Container(
//                                 color: Colors.black.withOpacity(0.9),
//                               ),
//                             ),
//                             InteractiveViewer(
//                               panEnabled: true,
//                               minScale: 0.8,
//                               maxScale: 4,
//                               child: Image.asset(
//                                 cert['image']!,
//                                 fit: BoxFit.contain,
//                               ),
//                             ),
//                             Positioned(
//                               top: 40,
//                               right: 30,
//                               child: IconButton(
//                                 icon: const Icon(Icons.close,
//                                     color: Colors.white, size: 30),
//                                 onPressed: () => Navigator.pop(context),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     );
//                   },
//                   child: Container(
//                     width: 280,
//                     height: 360,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(18),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black.withOpacity(0.08),
//                           blurRadius: 8,
//                           offset: const Offset(0, 4),
//                         ),
//                       ],
//                       border: Border.all(
//                         color: Colors.tealAccent.withOpacity(0.25),
//                         width: 1,
//                       ),
//                     ),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         // รูปใบรับรอง
//                         ClipRRect(
//                           borderRadius: const BorderRadius.vertical(
//                               top: Radius.circular(18)),
//                           child: Image.asset(
//                             cert['image']!,
//                             height: 180,
//                             width: double.infinity,
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//
//                         // ข้อมูลใบรับรอง
//                         Padding(
//                           padding: const EdgeInsets.all(14),
//                           child: Column(
//                             children: [
//                               Text(
//                                 cert['title']!,
//                                 textAlign: TextAlign.center,
//                                 style: const TextStyle(
//                                   fontSize: 17,
//                                   fontWeight: FontWeight.bold,
//                                   color: Color(0xFF1E293B),
//                                   height: 1.4,
//                                 ),
//                               ),
//                               const SizedBox(height: 8),
//                               Text(
//                                 cert['issuer']!,
//                                 textAlign: TextAlign.center,
//                                 style: const TextStyle(
//                                   fontSize: 14,
//                                   color: Color(0xFF475569),
//                                   height: 1.6,
//                                 ),
//                               ),
//                               const SizedBox(height: 10),
//                               Container(
//                                 padding: const EdgeInsets.symmetric(
//                                     horizontal: 12, vertical: 4),
//                                 decoration: BoxDecoration(
//                                   color: Colors.tealAccent.withOpacity(0.2),
//                                   borderRadius: BorderRadius.circular(20),
//                                 ),
//                                 child: Text(
//                                   'Year: ${cert['year']}',
//                                   style: const TextStyle(
//                                     color: Colors.teal,
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ).animate().fadeIn(duration: 400.ms).scale(
//                     begin: const Offset(0.96, 0.96),
//                     end: const Offset(1, 1),
//                   ),
//                 ),
//               );
//             }).toList(),
//           ),
//         ],
//       ),
//     );
//   }
// }

const double cardWidth = 280;
const double cardHeight = 360;
const double cardSpacing = 24;

class CertificatesSection extends StatefulWidget {
  const CertificatesSection({super.key});

  @override
  State<CertificatesSection> createState() => _CertificatesSectionState();
}

class _CertificatesSectionState extends State<CertificatesSection> {
  final PageController _pageController =
  PageController(viewportFraction: 0.8);

  final ScrollController _scrollController = ScrollController();

  final certificates = [
  {
        'title': 'Yala Technical College',
        'issuer': 'English In And Out Campus School Program',
        'image': 'assets/images/certi/certi22082017.jpg',
        'year': '2017'
      },
      {
        'title': 'มหาวิทยาลัยนราธิวาสราชนครินทร์',
        'issuer':
        'การแข่งขันทักษะการประกอบคอมพิวเตอร์ ติดตั้งระบบปฏิบัติการและซอฟต์แวร์',
        'image': 'assets/images/certi/certi6022018.jpg',
        'year': '2018'
      },
      {
        'title': 'สำนักงานคณะกรรมการการอาชีวศึกษา',
        'issuer':
        'ร่วมจัดแสดงนิทรรศการ เมืองเทคโนโลยี นวัตกรรม สิ่งประดิษฐ์ และหุ่นยนต์',
        'image': 'assets/images/certi/certi26122018.jpg',
        'year': '2018'
      },
      {
        'title': 'กสท โทรคมนาคม',
        'issuer':
        'ฝึกงาน ณ แผนกปฏิบัติการโทรคมนาคม สำนักงานบริการลูกค้า กสท ยะลา',
        'image': 'assets/images/certi/certi12072019.jpg',
        'year': '2019'
      },
  ];

  void _openImage(String image) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (_) => Dialog(
        backgroundColor: Colors.transparent,
        insetPadding: EdgeInsets.zero,
        child: Stack(
          children: [
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                color: Colors.black.withOpacity(0.9),
              ),
            ),
            Center(
              child: InteractiveViewer(
                maxScale: 4,
                child: Image.asset(image, fit: BoxFit.contain),
              ),
            ),
            Positioned(
              top: 30,
              right: 30,
              child: IconButton(
                icon: const Icon(Icons.close,
                    color: Colors.white, size: 32),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF0F3F7),
      padding: const EdgeInsets.symmetric(vertical: 80),
      child: Column(
        children: [
          const Text(
            '🏅 Certificates',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Color(0xFF000000),
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'เกียรติบัตรและผลงานที่ได้รับการรับรองจากหน่วยงานต่าง ๆ',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              color: Color(0xFF64748B),
            ),
          ),
          const SizedBox(height: 40),

          LayoutBuilder(
            builder: (context, constraints) {
              final width = constraints.maxWidth;
              final isDesktop = width >= 1200;
              final isTablet = width >= 768 && width < 1200;
              /// ================= DESKTOP / TABLET =================
              if (isDesktop || isTablet) {
                final itemsPerView = isDesktop ? 4 : 2;
                final totalWidth =
                    certificates.length * cardWidth +
                        (certificates.length - 1) * cardSpacing;

                final viewWidth =
                    itemsPerView * cardWidth +
                        (itemsPerView - 1) * cardSpacing;

                final itemsPerScroll = itemsPerView;
                final shouldScroll = certificates.length > itemsPerView;

                return SizedBox(
                  height: 420,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      ListView.separated(
                        controller: _scrollController,
                        scrollDirection: Axis.horizontal,
                        physics: shouldScroll
                            ? const BouncingScrollPhysics()
                            : const NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.symmetric(
                          horizontal: shouldScroll
                              ? 60
                              : (constraints.maxWidth -
                              (certificates.length * cardWidth +
                                  (certificates.length - 1) * cardSpacing)) / 2,
                        ),
                        itemCount: certificates.length,
                        separatorBuilder: (_, __) =>
                        const SizedBox(width: cardSpacing),
                        itemBuilder: (_, index) {
                          return CertiCard(
                            cert: certificates[index],
                            onTap: () => _openImage(certificates[index]['image']!),
                          );
                        },
                      ),
                      /// LEFT
                      if (shouldScroll)
                        Positioned(
                          left: 20,
                          child: _ArrowButton(
                            icon: Icons.chevron_left,
                            onTap: () {
                              if (!_scrollController.hasClients) return;

                              _scrollController.animateTo(
                                (_scrollController.offset -
                                    (cardWidth + cardSpacing) * itemsPerScroll)
                                    .clamp(
                                  0.0,
                                  _scrollController.position.maxScrollExtent,
                                ),
                                duration: const Duration(milliseconds: 400),
                                curve: Curves.easeOut,
                              );
                            },
                          ),
                        ),
                      /// RIGHT
                      if (shouldScroll)
                        Positioned(
                          right: 20,
                          child: _ArrowButton(
                            icon: Icons.chevron_right,
                            onTap: () {
                              if (!_scrollController.hasClients) return;

                              _scrollController.animateTo(
                                (_scrollController.offset +
                                    (cardWidth + cardSpacing) * itemsPerScroll)
                                    .clamp(
                                  0.0,
                                  _scrollController.position.maxScrollExtent,
                                ),
                                duration: const Duration(milliseconds: 400),
                                curve: Curves.easeOut,
                              );
                            },
                          ),
                        ),
                    ],
                  ),
                );
              }
              /// ================= MOBILE =================
              return SizedBox(
                height: 420,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    PageView.builder(
                      controller: _pageController,
                      itemCount: certificates.length,
                      itemBuilder: (_, index) {
                        return Center(
                          child: CertiCard(
                            cert: certificates[index],
                            onTap: () => _openImage(
                                certificates[index]['image']!),
                          ),
                        );
                      },
                    ),
                    /// LEFT ARROW
                    Positioned(
                      left: 16,
                      child: _ArrowButton(
                        icon: Icons.chevron_left,
                        onTap: () {
                          _pageController.previousPage(
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.easeOut,
                          );
                        },
                      ),
                    ),
                    /// RIGHT ARROW
                    Positioned(
                      right: 16,
                      child: _ArrowButton(
                        icon: Icons.chevron_right,
                        onTap: () {
                          _pageController.nextPage(
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.easeOut,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
/// ================= Arrow Button =================
class _ArrowButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const _ArrowButton({
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: Colors.tealAccent,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.teal.withOpacity(0.25),
            blurRadius: 10,
          ),
        ],
      ),
      child: IconButton(
        icon: Icon(icon, size: 28, color: Colors.white),
        onPressed: onTap,
      ),
    );
  }
}
