import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../lib/main.dart'; // or correct package name if known

void main() {
  testWidgets('Login screen renders properly', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    expect(find.text('Welcome Back!'), findsOneWidget);
    expect(find.text('Log In'), findsOneWidget);
    expect(find.text('Sign Up'), findsOneWidget);
  });
}
