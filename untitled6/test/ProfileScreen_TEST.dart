import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:untitled6/ProfileScreen.dart';

void main() {
  testWidgets('ProfileScreen widget test', (WidgetTester tester) async {

    await tester.pumpWidget(MaterialApp(
      home: ProfileScreen(),
    ));

    expect(find.byIcon(Icons.camera_alt_outlined), findsOneWidget);
    expect(find.text('Henüz Gönderin Yok'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.person_add_alt_outlined));
    await tester.pumpAndSettle();

    expect(find.byIcon(Icons.person_add), findsOneWidget);
    expect(find.text("Senin Fotoğrafların ve Videoların"), findsOneWidget);

  });
}
