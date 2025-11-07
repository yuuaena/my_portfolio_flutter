import 'package:flutter/material.dart';

// class NavBar extends StatelessWidget {
//   final Function(String) onItemSelected;
//
//   const NavBar({super.key, required this.onItemSelected});
//
//   @override
//   Widget build(BuildContext context) {
//     final items = {
//       'about': 'About',
//       'skills': 'Skills',
//       'projects': 'Projects',
//       'certificates': 'Certificates',
//       'contact': 'Contact',
//     };
//
//     return Container(
//       color: Colors.black87,
//       padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           const Text(
//             "My Portfolio",
//             style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//           ),
//           Row(
//             children: items.entries.map((entry) {
//               return Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 12.0),
//                 child: TextButton(
//                   onPressed: () => onItemSelected(entry.key),
//                   child: Text(
//                     entry.value,
//                     style: const TextStyle(
//                       color: Colors.white70,
//                       fontSize: 16,
//                     ),
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

class NavBar extends StatelessWidget {
  final Function(String) onItemSelected;

  const NavBar({super.key, required this.onItemSelected});

  @override
  Widget build(BuildContext context) {
    final items = {
      'about': 'About',
      'skills': 'Skills',
      'projects': 'Projects',
      'certificates': 'Certificates',
      'contact': 'Contact',
    };

    return Container(
      color: const Color(0xFF161B22),
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
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
          Row(
            children: items.entries.map((entry) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: TextButton(
                  onPressed: () => onItemSelected(entry.key),
                  child: Text(
                    entry.value,
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
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
