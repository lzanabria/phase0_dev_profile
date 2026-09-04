import 'package:flutter_test/flutter_test.dart';
import 'package:phase0_dev_profile/main.dart';

void main() {
  testWidgets('shows profile info and navigates to about screen', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyDevProfileApp());

    expect(find.text('Luis Zanabria'), findsOneWidget);
    expect(find.text('Habilidades'), findsOneWidget);

    await tester.tap(find.text('Más sobre mí'));
    await tester.pumpAndSettle();

    expect(find.text('Sobre mí'), findsOneWidget);
  });
}
