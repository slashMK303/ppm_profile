import 'package:flutter/material.dart';

class AppConstants {
  static const appName = 'PPM Profile';
}

// Simple avatar helpers

String avatarInitial(String name) {
  final n = name.trim();
  if (n.isEmpty) return '?';
  return n[0].toUpperCase();
}

ImageProvider? avatarImageProvider(String url) {
  if (url.isEmpty) return null;
  return url.startsWith('http') ? NetworkImage(url) : AssetImage(url);
}

Widget avatarCircle({
  required String url,
  required String name,
  double radius = 48,
}) {
  final provider = avatarImageProvider(url);
  return CircleAvatar(
    radius: radius,
    backgroundImage: provider,
    child: provider == null
        ? Text(avatarInitial(name), style: TextStyle(fontSize: radius * 0.75))
        : null,
  );
}
