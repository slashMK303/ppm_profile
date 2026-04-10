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
