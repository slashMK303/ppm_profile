// This file contains a combined copy of the project's source files as a single
// raw string. It is a read-only snapshot for review and will not be executed.

const String ALL_CODE_COMBINED = '''
// lib/main.dart
import 'package:flutter/material.dart';
import 'package:ppmtask/pages/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const ProfilePage(),
    );
  }
}

// lib/pages/profile_page.dart
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

// lib/widgets/profile_info.dart
import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const ProfileInfo({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        children: [
          Icon(icon, size: 20, color: Theme.of(context).colorScheme.primary),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(label, style: Theme.of(context).textTheme.labelSmall),
                Text(value, style: Theme.of(context).textTheme.bodyMedium),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// lib/models/profile.dart
class Profile {
  final String name;
  final String nim;
  final String program;
  final String description;
  final String email;
  final String hobbies;
  final String website;
  final String avatarUrl;

  const Profile({
    required this.name,
    required this.nim,
    required this.program,
    required this.description,
    required this.email,
    required this.hobbies,
    required this.website,
    this.avatarUrl = '',
  });
}

// lib/services/dummy_service.dart
import 'package:ppmtask/models/profile.dart';

class DummyService {
  static const Profile sample = Profile(
    name: 'Nanang Marvin Kurniawan',
    nim: 'L200230015',
    program: 'Teknik Informatika / Kelas A',
    description:
        'Saya adalah seorang mahasiswa Teknik Informatika yang memiliki minat dalam pengembangan aplikasi mobile dan web. Saya senang belajar teknologi baru dan selalu berusaha untuk meningkatkan keterampilan saya dalam pemrograman.',
    email: 'nanangm.dev@gmail.com',
    hobbies: '3D Modeling, Programming, Moding',
    website: 'nanangmarvin.my.id',
    avatarUrl: '/images/avatar.jpg',
  );
}

// lib/utils/constants.dart
class AppConstants {
  static const appName = 'PPM Profile';
}

// lib/pages/constants_page.dart
import 'package:flutter/material.dart';

class ConstantsPage extends StatelessWidget {
  const ConstantsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Constants')),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            'Placeholder: isi untuk Constants (sama sementara)',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

// lib/pages/methods_page.dart
import 'package:flutter/material.dart';

class MethodsPage extends StatelessWidget {
  const MethodsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Methods')),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            'Placeholder: isi untuk Methods (sama sementara)',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

// lib/pages/classes_page.dart
import 'package:flutter/material.dart';

class ClassesPage extends StatelessWidget {
  const ClassesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Classes')),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            'Placeholder: isi untuk Classes (sama sementara)',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

''';
