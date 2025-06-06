import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:hello_world/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('App loads and displays hello', (WidgetTester tester) async {
    app.main();
    await tester.pumpAndSettle();

    expect(find.text('Hello World'), findsOneWidget);
  });
}
