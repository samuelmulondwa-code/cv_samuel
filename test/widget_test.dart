import 'package:flutter_test/flutter_test.dart';

import 'package:cv_flutter_samuel/main.dart';

void main() {
  testWidgets('La page de connexion s affiche', (tester) async {
    await tester.pumpWidget(const CvApp());

    expect(find.text('Connexion'), findsOneWidget);
    expect(find.text('Se connecter'), findsOneWidget);
  });
}
