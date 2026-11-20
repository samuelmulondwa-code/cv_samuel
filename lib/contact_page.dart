import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  // TODO : remplacez par vos vraies coordonnées.
  static const _phone = '+243972395420';
  static const _email = 'samuelmulondwa@gmail.com';

  Future<void> _open(BuildContext context, Uri uri) async {
    final ok = await launchUrl(uri, mode: LaunchMode.externalApplication);
    if (!ok && context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Impossible d\'ouvrir ce lien')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _tile(context, Icons.phone, 'Téléphone', _phone,
            Uri(scheme: 'tel', path: _phone)),
        _tile(context, Icons.email, 'E-mail', _email,
            Uri(scheme: 'mailto', path: _email)),
        _tile(context, Icons.location_on, 'Adresse', 'Goma, Nord-Kivu, RDC',
            Uri.parse('https://www.google.com/maps/search/?api=1&query=Goma')),
        
      ],
    );
  }

  Widget _tile(BuildContext context, IconData icon, String label, String value,
      Uri uri) {
    return Card(
      child: ListTile(
        leading: Icon(icon, color: Theme.of(context).colorScheme.primary),
        title: Text(label),
        subtitle: Text(value),
        trailing: const Icon(Icons.chevron_right),
        onTap: () => _open(context, uri),
      ),
    );
  }
}
