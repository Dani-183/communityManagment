class Member {
  final String id;
  final String name;
  final String role;
  final String avatarUrl;
  final bool isAdmin;

  Member({
    required this.id,
    required this.name,
    required this.role,
    required this.avatarUrl,
    this.isAdmin = false,
  });
}

