import 'package:flutter/material.dart';

class CvPage extends StatelessWidget {
  const CvPage({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Center(
          child: CircleAvatar(
            radius: 60,
            backgroundColor: scheme.primaryContainer,
            child: ClipOval(
              child: Image.asset(
                'assets/images/sam.jpg',
                width: 120,
                height: 120,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) =>
                    Icon(Icons.person, size: 70, color: scheme.primary),
              ),
            ),
          ),
        ),
        const SizedBox(height: 12),
        Text('Kyelu Mulondwa Samuel',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineSmall),
        const SizedBox(height: 4),
        Text('Étudiant en Réseaux et Télécommunications',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium),
        const Text('Né le 19/01/2005 à Bukabu • Goma, RDC',
            textAlign: TextAlign.center),
        const _Section(
          icon: Icons.school,
          title: 'Formation',
          items: [
            _Item('Licence (4e année) – Réseaux et Télécommunications',
                'ISIG Goma • depuis 2023'),
            _Item('Diplôme d\'État – Biologie-Chimie', '2023'),
          ],
        ),
        const _Section(
          icon: Icons.work,
          title: 'Expériences',
          items: [
            _Item('Stage – HAYATCOM',
                'Maintenance sur les sites télécoms • juin 2026'),
            _Item('Stage – Canal-Box', 'août 2025'),
            _Item('Stage – Airtel', 'juin 2024'),
            _Item('Bénévolat – U-REPORT (UNICEF)',
                'Prévention contre les maladies • 2026'),
          ],
        ),
        const _Section(
          icon: Icons.build,
          title: 'Compétences techniques',
          chips: [
            'Réseaux',
            'Télécommunications',
            'Maintenance de sites télécoms',
            'Flutter / Dart',
            'Git & GitHub',
          ],
        ),
        const _Section(
          icon: Icons.language,
          title: 'Langues',
          chips: ['Français (courant)', 'Anglais (intermédiaire)'],
        ),
        const _Section(
          icon: Icons.favorite,
          title: 'Centres d\'intérêt',
          chips: ['Technologie', 'Télécoms', 'Santé & prévention', 'Bénévolat'],
        ),
      ],
    );
  }
}

class _Item {
  final String title;
  final String subtitle;
  const _Item(this.title, this.subtitle);
}

class _Section extends StatelessWidget {
  final IconData icon;
  final String title;
  final List<_Item> items;
  final List<String> chips;

  const _Section({
    required this.icon,
    required this.title,
    this.items = const [],
    this.chips = const [],
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(top: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Icon(icon, color: Theme.of(context).colorScheme.primary),
              const SizedBox(width: 8),
              Text(title, style: Theme.of(context).textTheme.titleLarge),
            ]),
            const Divider(),
            for (final it in items)
              ListTile(
                contentPadding: EdgeInsets.zero,
                dense: true,
                title: Text(it.title,
                    style: const TextStyle(fontWeight: FontWeight.w600)),
                subtitle: Text(it.subtitle),
              ),
            if (chips.isNotEmpty)
              Wrap(
                spacing: 8,
                runSpacing: 4,
                children: [for (final c in chips) Chip(label: Text(c))],
              ),
          ],
        ),
      ),
    );
  }
}
