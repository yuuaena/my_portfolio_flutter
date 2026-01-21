import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../widgets/project_card.dart';


class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final projects = [
      {
        'title': 'Portfolio Website',
        'description': 'เว็บ Portfolio พัฒนาโดย Flutter Web',
        'link': 'https://github.com/yuuaena/my_portfolio_flutter.git',
        'images': [
        ],
      },
      {
        'title': 'Online Learning Management System (LMS)',
        'description':
        'เว็บ Management System For Special Educational Institutions พัฒนาโดย Angular , Spring Boot และ PostgreSQL',
        'link': '',
        'images': [],
      },
      {
        'title': 'Network Simulation',
        'description':
        'Designed and configured network systems using Cisco Packet Tracer.'
        ' Created routing and switching simulations for academic projects',
        'link': '',
        'images': [
          'assets/images/project/Network/Screenshot_2025-11-08_082538.png',
          'assets/images/project/Network/Screenshot_2025-11-08_082640.png',
          'assets/images/project/Network/Screenshot_2025-11-08_082738.png',
          'assets/images/project/Network/Screenshot_2025-11-08_082858.png',
          'assets/images/project/Network/Screenshot_2025-11-08_083005.png',
        ],
      },
      {
        'title': 'Project SQL',
        'description':
        'ระบบหาผลลัพธ์ของข้อมูล ด้วยการใช้ SQL',
        'link': '',
        'images': [
          'assets/images/project/Project_SQL/Screenshot_2026-01-02_195932.png',
          'assets/images/project/Project_SQL/Screenshot_2026-01-02_220000.png',
          'assets/images/project/Project_SQL/Screenshot_2026-01-02_221904.png',
          'assets/images/project/Project_SQL/Screenshot_2026-01-05_213726.png',
          'assets/images/project/Project_SQL/Screenshot_2026-01-05_215418.png',
          'assets/images/project/Project_SQL/Screenshot-2026-01-05_215821.png',
          'assets/images/project/Project_SQL/Screenshot_2026-01-05_220839.png',
          'assets/images/project/Project_SQL/Screenshot_2026-01-05_222526.png',
          'assets/images/project/Project_SQL/Screenshot_2026-01-05_222847.png',
        ],
      },
      {
        'title': 'Job Tracker System',
        'description':
        'ระบบติดตามการสมัครงาน พัฒนาโดยใช้ Spring Boot และ MySQL',
        'link': '',
        'images': [],
        'isUpdating': true,
      },
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
                title: p['title']?.toString() ?? '',
                description: p['description']?.toString() ?? '',
                link: p['link']?.toString() ?? '',
                images: List<String>.from(p['images'] as List),
                isUpdating: p['isUpdating'] as bool? ?? false,
              ),
            )
                .toList(),
          ),
        ],
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final List<String> images;
  final String link;
  final bool isUpdating;

  const ProjectCard({
    super.key,
    required this.title,
    required this.description,
    this.images = const [],
    this.link = '',
    this.isUpdating = false,   // default = ไม่ขึ้นปุ่ม
  });

  @override
  Widget build(BuildContext context) {
    final bool hasLink = link.isNotEmpty;
    final bool hasImages = images.isNotEmpty;
    /////////////////
    return Card(
      color: Colors.white,
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// TITLE
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF161B22),
              ),
            ),

            const SizedBox(height: 10),

            /// DESCRIPTION
            Text(
              description,
              style: const TextStyle(fontSize: 15, color: Colors.black87),
            ),

            const SizedBox(height: 16),

            /// BUTTON ROW
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                /// ปุ่มกำลังปรับปรุง (สีแดง)
                if (isUpdating)
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text("กำลังปรับปรุง"),
                  ),

                if (isUpdating) const SizedBox(width: 10),

                /// ปุ่มดูเพิ่มเติม → เปิด GridView
                if (hasImages)
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF4A90E2),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (_) {
                          return Dialog(
                            insetPadding: const EdgeInsets.all(20),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Stack(
                              children: [
                                /// CONTENT
                                Container(
                                  width: 600,
                                  padding: const EdgeInsets.all(20),
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 10),
                                      const Text(
                                        "รูปเพิ่มเติม",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 16),

                                      /// GRIDVIEW (4 รูปต่อแถว)
                                      Expanded(
                                        child: GridView.builder(
                                          gridDelegate:
                                          const SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 4,
                                            crossAxisSpacing: 8,
                                            mainAxisSpacing: 8,
                                          ),
                                          itemCount: images.length,
                                          itemBuilder: (context, index) {
                                            return GestureDetector(
                                              onTap: () {
                                                showDialog(
                                                  context: context,
                                                  barrierDismissible: false,
                                                  builder: (_) => Dialog(
                                                    insetPadding:
                                                    const EdgeInsets.all(20),
                                                    shape:
                                                    RoundedRectangleBorder(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          16),
                                                    ),
                                                    child: Stack(
                                                      children: [
                                                        ClipRRect(
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(16),
                                                          child: Image.asset(
                                                            images[index],
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),

                                                        /// ปุ่ม X ปิดรูปใหญ่
                                                        Positioned(
                                                          right: 10,
                                                          top: 10,
                                                          child: GestureDetector(
                                                            onTap: () =>
                                                                Navigator.pop(
                                                                    context),
                                                            child: Container(
                                                              padding:
                                                              const EdgeInsets
                                                                  .all(6),
                                                              decoration:
                                                              BoxDecoration(
                                                                color: Colors
                                                                    .black54,
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                              child: const Icon(
                                                                Icons.close,
                                                                color:
                                                                Colors.white,
                                                                size: 20,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              },
                                              child: ClipRRect(
                                                borderRadius:
                                                BorderRadius.circular(10),
                                                child: Image.asset(
                                                  images[index],
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                /// ปุ่ม X ปิด GridView
                                Positioned(
                                  right: 10,
                                  top: 10,
                                  child: GestureDetector(
                                    onTap: () => Navigator.pop(context),
                                    child: Container(
                                      padding: const EdgeInsets.all(6),
                                      decoration: BoxDecoration(
                                        color: Colors.black54,
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Icon(
                                        Icons.close,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: const Text("ดูเพิ่มเติม"),
                  ),

                const SizedBox(width: 10),

                /// ปุ่มดูโค้ด
                if (hasLink)
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF161B22),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () async {
                      final uri = Uri.parse(link);
                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri);
                      }
                    },
                    child: const Text("ดูโค้ด"),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
