import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:url_launcher/url_launcher.dart';

class HobbyImageCard extends StatefulWidget {
  final String image;

  const HobbyImageCard({super.key, required this.image});

  @override
  State<HobbyImageCard> createState() => _HobbyImageCardState();
}

class _HobbyImageCardState extends State<HobbyImageCard> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => hover = true),
      onExit: (_) => setState(() => hover = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeOut,
        margin: const EdgeInsets.symmetric(horizontal: 14),
        width: 260,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          boxShadow: [
            BoxShadow(
              color: hover
                  ? Colors.black.withOpacity(0.15)
                  : Colors.black.withOpacity(0.07),
              blurRadius: hover ? 20 : 12,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(22),
          child: AnimatedScale(
            scale: hover ? 1.06 : 1.0,
            duration: const Duration(milliseconds: 250),
            child: Image.asset(
              widget.image,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
