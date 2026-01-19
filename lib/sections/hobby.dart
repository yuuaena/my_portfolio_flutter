import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../widgets/hobby_card.dart';
import 'dart:async';

class HobbySection extends StatefulWidget {
  const HobbySection({super.key});

  @override
  State<HobbySection> createState() => _HobbySectionState();
}

class _HobbySectionState extends State<HobbySection> {
  final ScrollController _controller = ScrollController();
  Timer? _timer;
  bool _isHoveringGallery = false;

  final List<String> images = [
    'assets/images/certi/certi26122018.jpg',
    'assets/images/profile/profile.jpg',
    'assets/hobbies/3.jpg',
    'assets/hobbies/4.jpg',
    'assets/hobbies/5.jpg',
  ];

  @override
  void initState() {
    super.initState();

    /// รอ widget render ก่อน
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _startAutoScroll();
    });
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(const Duration(milliseconds: 25), (_) {
      if (!_controller.hasClients || _isHoveringGallery) return;

      final max = _controller.position.maxScrollExtent;
      final offset = _controller.offset;

      if (offset >= max) {
        _controller.jumpTo(0);
      } else {
        _controller.jumpTo(offset + 0.5);
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: 90,
        horizontal: width < 900 ? 20 : 80,
      ),
      color: Colors.grey.shade50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// ---------- TITLE ----------
          const Text(
            'HOBBIES',
            style: TextStyle(
              letterSpacing: 3,
              fontSize: 14,
              color: Color(0xFF2DD4BF),
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Photography & Life',
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.w600,
              color: Color(0xFF0F172A),
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Capturing moments outside of coding',
            style: TextStyle(
              color: Color(0xFF475569),
              fontSize: 16,
            ),
          ),

          const SizedBox(height: 50),

          /// ---------- GALLERY ----------
          MouseRegion(
            onEnter: (_) => setState(() => _isHoveringGallery = true),
            onExit: (_) => setState(() => _isHoveringGallery = false),
            child: SizedBox(
              height: 420,
              child: ListView.builder(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: images.length * 3,
                itemBuilder: (context, index) {
                  final img = images[index % images.length];
                  return HobbyImageCard(image: img);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}





