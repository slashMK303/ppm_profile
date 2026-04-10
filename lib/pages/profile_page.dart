import 'package:flutter/material.dart';
import 'package:ppmtask/models/profile.dart';
import 'package:ppmtask/services/dummy_service.dart';
import 'package:ppmtask/widgets/profile_info.dart';
import 'package:ppmtask/utils/constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Profile p = DummyService.sample;

    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              avatarCircle(url: p.avatarUrl, name: p.name, radius: 48),
              const SizedBox(height: 12),
              Text(p.name, style: Theme.of(context).textTheme.headlineSmall),
              const SizedBox(height: 6),
              Text(p.nim, style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: 6),
              Text(p.program, style: Theme.of(context).textTheme.bodyMedium),
            ],
          ),
          const SizedBox(height: 20),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tentang Saya',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 8),
                  Text(p.description),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  ProfileInfo(
                    icon: Icons.email,
                    label: 'Email',
                    value: p.email,
                  ),
                  ProfileInfo(
                    icon: Icons.favorite,
                    label: 'Hobi',
                    value: p.hobbies,
                  ),
                  ProfileInfo(
                    icon: Icons.link,
                    label: 'Website',
                    value: p.website,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
