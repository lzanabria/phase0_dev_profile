class Skill {
  const Skill({
    required this.name,
    this.isFavorite = false,
  });

  final String name;
  final bool isFavorite;

  Skill copyWith({bool? isFavorite}) {
    return Skill(
      name: name,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}
