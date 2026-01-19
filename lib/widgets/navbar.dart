import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final Function(String) onItemSelected;
  final String selectedItem;

  const NavBar({
    super.key,
    required this.onItemSelected,
    required this.selectedItem,
  });

  @override
  Widget build(BuildContext context) {
    final items = {
      'about': 'About',
      'skills': 'Skills',
      'projects': 'Projects',
      'certificates': 'Certificates',
      'hobby': 'Hobby',
      'contact': 'Contact',
    };

    final isMobile = MediaQuery.of(context).size.width < 768;

    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      color: const Color(0xFF161B22),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "My Portfolio",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.tealAccent,
            ),
          ),

          /// Desktop Menu
          if (!isMobile)
            Row(
              children: items.entries.map((entry) {
                final isActive = selectedItem == entry.key;

                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: TextButton(
                    onPressed: () => onItemSelected(entry.key),
                    child: Text(
                      entry.value,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight:
                        isActive ? FontWeight.w600 : FontWeight.w500,
                        color: isActive
                            ? Colors.tealAccent
                            : Colors.white70,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),

          /// Mobile Menu
          if (isMobile)
            PopupMenuButton<String>(
              icon: const Icon(Icons.menu, color: Colors.white),
              color: const Color(0xFF161B22),
              onSelected: onItemSelected,
              itemBuilder: (context) {
                return items.entries.map((entry) {
                  final isActive = selectedItem == entry.key;

                  return PopupMenuItem<String>(
                    value: entry.key,
                    child: Text(
                      entry.value,
                      style: TextStyle(
                        color: isActive
                            ? Colors.tealAccent
                            : Colors.white,
                        fontWeight:
                        isActive ? FontWeight.bold : FontWeight.normal,
                      ),
                    ),
                  );
                }).toList();
              },
            ),
        ],
      ),
    );
  }
}
