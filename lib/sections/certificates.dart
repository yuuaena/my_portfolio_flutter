import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class CertificatesSection extends StatelessWidget {
  const CertificatesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final certificates = [
      {
        'title': 'Yala Technical College',
        'issuer': 'English In And Out Campus School Program',
        'image': 'assets/images/certi22082017.jpg',
        'year': '2017'
      },
      {
        'title': 'มหาวิทยาลัยนราธิวาสราชนครินทร์',
        'issuer':
        'การแข่งขันทักษะการประกอบคอมพิวเตอร์ ติดตั้งระบบปฏิบัติการและซอฟต์แวร์',
        'image': 'assets/images/certi6022018.jpg',
        'year': '2018'
      },
      {
        'title': 'สำนักงานคณะกรรมการการอาชีวศึกษา',
        'issuer':
        'ร่วมจัดแสดงนิทรรศการ เมืองเทคโนโลยี นวัตกรรม สิ่งประดิษฐ์ และหุ่นยนต์',
        'image': 'assets/images/certi26122018.jpg',
        'year': '2018'
      },
      {
        'title': 'กสท โทรคมนาคม',
        'issuer':
        'ฝึกงาน ณ แผนกปฏิบัติการโทรคมนาคม สำนักงานบริการลูกค้า กสท ยะลา',
        'image': 'assets/images/certi12072019.jpg',
        'year': '2019'
      },
    ];

    return Container(
      color: const Color(0xFFF0F3F7),
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // หัวข้อ
          Text(
            '🏅 Certificates',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 26,
              color: const Color(0xFF1E293B),
              letterSpacing: 1.1,
            ),
          ).animate().fade(duration: 500.ms).slideY(begin: -0.2, end: 0),

          const SizedBox(height: 10),

          const Text(
            'เกียรติบัตรและผลงานที่ได้รับการรับรองจากหน่วยงานต่าง ๆ',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF64748B),
            ),
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 40),

          // Grid ของใบรับรอง
          Wrap(
            spacing: 24,
            runSpacing: 24,
            alignment: WrapAlignment.center,
            children: certificates.map((cert) {
              return MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    // เปิดภาพแบบเต็มหน้าจอ
                    showDialog(
                      context: context,
                      builder: (_) => Dialog(
                        backgroundColor: Colors.transparent,
                        insetPadding: EdgeInsets.zero,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            GestureDetector(
                              onTap: () => Navigator.pop(context),
                              child: Container(
                                color: Colors.black.withOpacity(0.9),
                              ),
                            ),
                            InteractiveViewer(
                              panEnabled: true,
                              minScale: 0.8,
                              maxScale: 4,
                              child: Image.asset(
                                cert['image']!,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Positioned(
                              top: 40,
                              right: 30,
                              child: IconButton(
                                icon: const Icon(Icons.close,
                                    color: Colors.white, size: 30),
                                onPressed: () => Navigator.pop(context),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  child: Container(
                    width: 280,
                    height: 360,
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
                        width: 1,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // รูปใบรับรอง
                        ClipRRect(
                          borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(18)),
                          child: Image.asset(
                            cert['image']!,
                            height: 180,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),

                        // ข้อมูลใบรับรอง
                        Padding(
                          padding: const EdgeInsets.all(14),
                          child: Column(
                            children: [
                              Text(
                                cert['title']!,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF1E293B),
                                  height: 1.4,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                cert['issuer']!,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF475569),
                                  height: 1.6,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 4),
                                decoration: BoxDecoration(
                                  color: Colors.tealAccent.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text(
                                  'Year: ${cert['year']}',
                                  style: const TextStyle(
                                    color: Colors.teal,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ).animate().fadeIn(duration: 400.ms).scale(
                    begin: const Offset(0.96, 0.96),
                    end: const Offset(1, 1),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

