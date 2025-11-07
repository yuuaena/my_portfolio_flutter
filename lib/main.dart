import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/navbar.dart';
import 'sections/about.dart';
import 'sections/skills.dart';
import 'sections/project.dart';
import 'sections/contact.dart';
import 'sections/certificates.dart';
import 'widgets/navbar.dart';
import 'package:google_fonts/google_fonts.dart';

// void main() => runApp(const MyPortfolioApp());
//
// class MyPortfolioApp extends StatelessWidget {
//   const MyPortfolioApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'My Portfolio',
//       theme: ThemeData.dark(useMaterial3: true).copyWith(
//         colorScheme: const ColorScheme.dark(
//           primary: Colors.tealAccent,
//           secondary: Colors.teal,
//         ),
//       ),
//       home: const PortfolioHome(),
//     );
//   }
// }
//
// class PortfolioHome extends StatefulWidget {
//   const PortfolioHome({super.key});
//
//   @override
//   State<PortfolioHome> createState() => _PortfolioHomeState();
// }
//
// class _PortfolioHomeState extends State<PortfolioHome> {
//   final ScrollController _scrollController = ScrollController();
//
//   // กำหนด GlobalKey ของแต่ละ section
//   final aboutKey = GlobalKey();
//   final skillsKey = GlobalKey();
//   final projectsKey = GlobalKey();
//   final certificatesKey = GlobalKey();
//   final contactKey = GlobalKey();
//
//   void scrollToSection(GlobalKey key) {
//     Scrollable.ensureVisible(
//       key.currentContext!,
//       duration: const Duration(milliseconds: 600),
//       curve: Curves.easeInOut,
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: PreferredSize(
//         preferredSize: const Size.fromHeight(70),
//         child: NavBar(
//           onItemSelected: (section) {
//             switch (section) {
//               case 'about':
//                 scrollToSection(aboutKey);
//                 break;
//               case 'skills':
//                 scrollToSection(skillsKey);
//                 break;
//               case 'projects':
//                 scrollToSection(projectsKey);
//                 break;
//               case 'certificates':
//                 scrollToSection(certificatesKey);
//                 break;
//               case 'contact':
//                 scrollToSection(contactKey);
//                 break;
//             }
//           },
//         ),
//       ),
//       body: SingleChildScrollView(
//         controller: _scrollController,
//         child: Column(
//           children: [
//             Container(key: aboutKey, child: const AboutSection()),
//             Container(key: skillsKey, child: const SkillsSection()),
//             Container(key: projectsKey, child: const ProjectsSection()),
//             Container(key: certificatesKey, child: const CertificatesSection()),
//             Container(key: contactKey, child: const ContactSection()),
//           ],
//         ),
//       ),
//     );
//   }
// }

void main() {
  runApp(const MyPortfolioApp());
}

class MyPortfolioApp extends StatelessWidget {
  const MyPortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Portfolio',
      theme: ThemeData.dark(useMaterial3: true).copyWith(
        scaffoldBackgroundColor: const Color(0xFF0D1117),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF58A6FF),
          secondary: Color(0xFF1F6FEB),
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white70),
        ),
      ),
      home: const PortfolioHome(),
    );
  }
}

class PortfolioHome extends StatefulWidget {
  const PortfolioHome({super.key});

  @override
  State<PortfolioHome> createState() => _PortfolioHomeState();
}

class _PortfolioHomeState extends State<PortfolioHome> {
  final ScrollController _scrollController = ScrollController();

  final aboutKey = GlobalKey();
  final skillsKey = GlobalKey();
  final projectsKey = GlobalKey();
  final certificatesKey = GlobalKey();
  final contactKey = GlobalKey();

  void scrollToSection(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 700),
      curve: Curves.easeInOutCubic,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: NavBar(
          onItemSelected: (section) {
            switch (section) {
              case 'about':
                scrollToSection(aboutKey);
                break;
              case 'skills':
                scrollToSection(skillsKey);
                break;
              case 'projects':
                scrollToSection(projectsKey);
                break;
              case 'certificates':
                scrollToSection(certificatesKey);
                break;
              case 'contact':
                scrollToSection(contactKey);
                break;
            }
          },
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Container(key: aboutKey, child: const AboutSection()),
            Container(key: skillsKey, child: const SkillsSection()),
            Container(key: projectsKey, child: const ProjectsSection()),
            Container(key: certificatesKey, child: const CertificatesSection()),
            Container(key: contactKey, child: const ContactSection()),
          ],
        ),
      ),
    );
  }
}
