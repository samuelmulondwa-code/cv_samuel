import 'package:flutter/material.dart';

class _Member {
  final String name;
  final String relation;
  final String? photo; // ex: assets/images/pere.jpg (optionnel)
  const _Member(this.name, this.relation, [this.photo]);
}

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});

  static const _members = [
    _Member('Muthozya Mulondwa Richard', 'Père', 'assets/images/pere.jpg'),
    _Member('Awezae Mpala Françoise', 'Mère', 'assets/images/mere.jpg'),
    _Member('Kwalyanzogu Mulondwa Hilaire', 'Frère', 'assets/images/hilaire.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: _members.length,
      itemBuilder: (context, i) {
        final m = _members[i];
        return Card(
          child: ListTile(
            contentPadding: const EdgeInsets.all(12),
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: scheme.primaryContainer,
              child: ClipOval(
                child: m.photo == null
                    ? Icon(Icons.person, color: scheme.primary)
                    : Image.asset(
                        m.photo!,
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                        errorBuilder: (_, __, ___) =>
                            Icon(Icons.person, size: 32, color: scheme.primary),
                      ),
              ),
            ),
            title: Text(m.name,
                style: const TextStyle(fontWeight: FontWeight.w600)),
            subtitle: Text('Lien de parenté : ${m.relation}'),
          ),
        );
      },
    );
  }
}
