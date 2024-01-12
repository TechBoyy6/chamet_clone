import 'package:flutter/material.dart';

class ProfileListTile extends StatelessWidget {
  final Icon icon;
  final String title;
  final Widget? trailingData;

  const ProfileListTile({
    Key? key,
    required this.icon,
    required this.title,
    this.trailingData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (trailingData != null) trailingData!,
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Icon(
              Icons.arrow_forward_ios_rounded,
              size: 14,
              color: Colors.grey.shade400.withOpacity(0.6),
            ),
          ),
        ],
      ),
    );
  }
}
