import 'package:flutter/material.dart';
import 'package:phase0_dev_profile/models/skill.dart';
import 'package:phase0_dev_profile/screens/about_screen.dart';
import 'package:phase0_dev_profile/widgets/profile_header.dart';
import 'package:phase0_dev_profile/widgets/skill_chip.dart';
import 'package:phase0_dev_profile/widgets/stat_badge.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
    required this.isDarkMode,
    required this.onToggleTheme,
  });

  final bool isDarkMode;
  final VoidCallback onToggleTheme;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Skill> _skills = [
    const Skill(name: 'Flutter', isFavorite: true),
    const Skill(name: 'Dart', isFavorite: true),
    const Skill(name: 'Riverpod'),
    const Skill(name: 'Firebase'),
    const Skill(name: 'Git'),
    const Skill(name: 'REST APIs'),
  ];

  void _toggleFavorite(int index) {
    setState(() {
      _skills[index] = _skills[index].copyWith(
        isFavorite: !_skills[index].isFavorite,
      );
    });
  }

  void _openAboutScreen() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => const AboutScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Perfil Dev'),
        actions: [
          IconButton(
            icon: Icon(widget.isDarkMode ? Icons.dark_mode : Icons.light_mode),
            tooltip: 'Cambiar tema',
            onPressed: widget.onToggleTheme,
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          ProfileHeader(
            name: 'Luis Zanabria',
            role: 'Desarrollador Mobile Flutter',
            bio: 'Construyo apps Flutter estables y con buena experiencia '
                'de usuario, con foco en arquitectura limpia y buenas '
                'prácticas de desarrollo mobile.',
            stats: const [
              StatBadge(
                icon: Icons.timeline,
                label: '3 años de experiencia',
              ),
              StatBadge(
                icon: Icons.verified,
                label: 'Nivel Advanced',
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Habilidades', style: theme.textTheme.titleLarge),
                const SizedBox(height: 4),
                Text(
                  'Toca una habilidad para destacarla',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: List.generate(
                    _skills.length,
                    (i) => SkillChip(
                      skill: _skills[i],
                      onTap: () => _toggleFavorite(i),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: _openAboutScreen,
                  style: TextButton.styleFrom(
                    minimumSize: const Size(double.infinity, 0),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    foregroundColor: theme.colorScheme.onSurface,
                    side: BorderSide(color: theme.colorScheme.primary),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Más sobre mí',
                          style: theme.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: theme.colorScheme.primary,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: theme.colorScheme.primary,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
