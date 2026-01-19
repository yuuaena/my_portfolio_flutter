import 'package:flutter/material.dart';
import 'package:my_portfolio/sections/hobby.dart';
import 'package:my_portfolio/widgets/navbar.dart';
import 'sections/about.dart';
import 'sections/skills.dart';
import 'sections/project.dart';
import 'sections/contact.dart';
import 'sections/certificates.dart';
import 'widgets/navbar.dart';
import 'package:google_fonts/google_fonts.dart';

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

  String _currentSection = 'about';

  final aboutKey = GlobalKey();
  final skillsKey = GlobalKey();
  final projectsKey = GlobalKey();
  final certificatesKey = GlobalKey();
  final hobbyKey = GlobalKey();
  final contactKey = GlobalKey();

  late final Map<String, GlobalKey> sectionKeys;

  @override
  void initState() {
    super.initState();

    sectionKeys = {
      'about': aboutKey,
      'skills': skillsKey,
      'projects': projectsKey,
      'certificates': certificatesKey,
      'hobby': hobbyKey,
      'contact': contactKey,
    };

    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    String? newSection;
    double minDistance = double.infinity;

    for (final entry in sectionKeys.entries) {
      final context = entry.value.currentContext;
      if (context == null) continue;

      final box = context.findRenderObject() as RenderBox;
      final distance =
      (box.localToGlobal(Offset.zero).dy - 80).abs(); // navbar height

      if (distance < minDistance) {
        minDistance = distance;
        newSection = entry.key;
      }
    }

    if (newSection != null && newSection != _currentSection) {
      setState(() => _currentSection = newSection!);
    }
  }

  void scrollToSection(String section) {
    final key = sectionKeys[section];
    if (key?.currentContext == null) return;

    setState(() => _currentSection = section);

    Scrollable.ensureVisible(
      key!.currentContext!,
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
          selectedItem: _currentSection,
          onItemSelected: scrollToSection,
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Container(key: aboutKey, child: const AboutSection()),
            Container(key: skillsKey, child: const SkillsSection()),
            Container(key: projectsKey, child: const ProjectsSection()),
            Container(
                key: certificatesKey,
                child: const CertificatesSection()),
            Container(key: hobbyKey, child: const HobbySection()),
            Container(key: contactKey, child: const ContactSection()),
          ],
        ),
      ),
    );
  }
}
