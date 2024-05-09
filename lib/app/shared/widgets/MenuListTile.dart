import 'package:flutter/material.dart';

class MenuListTile extends StatelessWidget {
  final Icon leadingIcon;
  final Text title;
  final VoidCallback onTap;

  const MenuListTile({
    super.key,
    required this.leadingIcon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 30.0),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromRGBO(232, 232, 232, 1.0),
          borderRadius: BorderRadius.circular(30),
        ),
        child: ListTile(
          onTap: onTap,
          title: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                leadingIcon,
                const SizedBox(width: 8.0),
                title,
              ],
            ),
          ),
        ),
      ),
    );
  }
}