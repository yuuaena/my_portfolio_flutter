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
    'assets/images/profile/profile.jpg',
    'assets/images/hobby/LINE_ALBUM_1912026_260120_1.jpg',
    'assets/images/hobby/LINE_ALBUM_1912026_260120_2.jpg',
    'assets/images/hobby/LINE_ALBUM_1912026_260120_3.jpg',
    'assets/images/hobby/LINE_ALBUM_1912026_260120_4.jpg',
    'assets/images/hobby/LINE_ALBUM_1912026_260120_5.jpg',
    'assets/images/hobby/LINE_ALBUM_1912026_260120_6.jpg',
    'assets/images/hobby/LINE_ALBUM_1912026_260120_7.jpg',
    'assets/images/hobby/LINE_ALBUM_1912026_260120_8.jpg',
    'assets/images/hobby/LINE_ALBUM_1912026_260120_9.jpg',
    'assets/images/hobby/LINE_ALBUM_1912026_260120_10.jpg',
    'assets/images/hobby/LINE_ALBUM_1912026_260120_11.jpg',
    'assets/images/hobby/LINE_ALBUM_1912026_260120_12.jpg',
  ];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _startAutoScroll();
    });
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(const Duration(milliseconds: 25), (_) {
      if (!_controller.hasClients || _isHoveringGallery) return;

      final max = _controller.position.maxScrollExtent;
      final offset = _controller.offset + 0.5;

      if (offset >= max) {
        _controller.jumpTo(0);
      } else {
        _controller.jumpTo(offset);
      }
    });
  }

  void _scrollBy(double value) {
    if (!_controller.hasClients) return;

    final max = _controller.position.maxScrollExtent;
    final current = _controller.offset;
    final target = current + value;

    const threshold = 10.0; // ระยะกันพลาด

    if (target > max - threshold) {
      // 👉 ไปถึงรูปสุดท้ายก่อน
      _controller.animateTo(
        max,
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeOutCubic,
      );
    } else if (target < threshold) {
      // 👉 ไปถึงรูปแรกก่อน
      _controller.animateTo(
        0,
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeOutCubic,
      );
    } else {
      _controller.animateTo(
        target,
        duration: const Duration(milliseconds: 450),
        curve: Curves.easeOutCubic,
      );
    }
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
    final isMobile = width < 768;

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
          /// ---------- GALLERY + BUTTON ----------
          MouseRegion(
            onEnter: (_) => setState(() => _isHoveringGallery = true),
            onExit: (_) => setState(() => _isHoveringGallery = false),
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: 420,
                  child: ListView.builder(
                    controller: _controller,
                    scrollDirection: Axis.horizontal,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: images.length,
                    itemBuilder: (context, index) {
                      final img = images[index % images.length];
                      return HobbyImageCard(image: img);
                    },
                  ),
                ),
                /// ◀ LEFT BUTTON
                _GalleryArrow(
                  icon: Icons.chevron_left,
                  visible: isMobile || _isHoveringGallery,
                  alignment: Alignment.centerLeft,
                  onTap: () => _scrollBy(-320),
                ),
                /// ▶ RIGHT BUTTON
                _GalleryArrow(
                  icon: Icons.chevron_right,
                  visible: isMobile || _isHoveringGallery,
                  alignment: Alignment.centerRight,
                  onTap: () => _scrollBy(320),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _GalleryArrow extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  final bool visible;
  final Alignment alignment;

  const _GalleryArrow({
    required this.icon,
    required this.onTap,
    required this.visible,
    required this.alignment,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: visible ? 1 : 0,
      duration: const Duration(milliseconds: 200),
      child: Align(
        alignment: alignment,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: GestureDetector(
            onTap: onTap,
            child: Container(
              width: 46,
              height: 46,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.55),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: Colors.white, size: 30),
            ),
          ),
        ),
      ),
    );
  }
}





