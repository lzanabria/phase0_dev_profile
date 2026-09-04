import 'package:flutter/material.dart';
import 'package:phase0_dev_profile/widgets/section_card.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sobre mí')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          SectionCard(
            icon: Icons.flag_outlined,
            label: 'Objetivo profesional',
            child: const Text(
              'Busco seguir creciendo como Desarrollador Mobile Flutter, '
              'aportando en productos reales y aplicando buenas prácticas '
              'de arquitectura y testing. Actualmente hago parte del '
              'programa GrowthHub de Pragma, fortaleciendo habilidades a '
              'través de una ruta práctica de proyectos.',
            ),
          ),
          const SizedBox(height: 20),
          SectionCard(
            icon: Icons.contact_mail_outlined,
            label: 'Contacto',
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.code),
                  title: const Text('GitHub'),
                  subtitle: const Text('github.com/lzanabria'),
                ),
                const SizedBox(height: 8),
                ListTile(
                  leading: const Icon(Icons.business_center_outlined),
                  title: const Text('LinkedIn'),
                  subtitle: const Text('linkedin.com/in/lzanabria'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
