import 'package:flutter/material.dart';
import 'package:ppmtask/models/profile.dart';
import 'package:ppmtask/services/dummy_service.dart';
import 'package:ppmtask/widgets/profile_info.dart';
import 'package:ppmtask/pages/constants_page.dart';
import 'package:ppmtask/pages/methods_page.dart';
import 'package:ppmtask/pages/classes_page.dart';

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
              CircleAvatar(
                radius: 48,
                backgroundImage: p.avatarUrl.isNotEmpty
                    ? (p.avatarUrl.startsWith('http')
                          ? NetworkImage(p.avatarUrl) as ImageProvider
                          : AssetImage(p.avatarUrl) as ImageProvider)
                    : null,
                child: p.avatarUrl.isEmpty
                    ? Text(
                        p.name.isNotEmpty ? p.name[0] : '?',
                        style: const TextStyle(fontSize: 36),
                      )
                    : null,
              ),
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
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => const ConstantsPage()));
                },
                child: const Text('Constants'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => const MethodsPage()));
                },
                child: const Text('Methods'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => const ClassesPage()));
                },
                child: const Text('Classes'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
