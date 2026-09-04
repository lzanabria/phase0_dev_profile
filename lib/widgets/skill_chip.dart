import 'package:flutter/material.dart';
import 'package:phase0_dev_profile/models/skill.dart';

class SkillChip extends StatelessWidget {
  const SkillChip({
    super.key,
    required this.skill,
    required this.onTap,
  });

  final Skill skill;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InputChip(
      label: Text(skill.name),
      avatar: Icon(
        skill.isFavorite ? Icons.star : Icons.star_border,
        size: 18,
      ),
      selected: skill.isFavorite,
      showCheckmark: false,
      onPressed: onTap,
    );
  }
}
