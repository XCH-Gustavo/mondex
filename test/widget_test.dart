// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mondex/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}

// void main() {
//   testWidgets('Pokedex app has a title and a floating action button', (WidgetTester tester) async {
//     await tester.pumpWidget(const MyApp());

//     // Verify that the app has a title
//     expect(find.text('Flutter Demo'), findsOneWidget);

//     // Verify that the floating action button is present
//     expect(find.byType(FloatingActionButton), findsOneWidget);
//   });

//   testWidgets('Home screen displays Pokémon list', (WidgetTester tester) async {
//     await tester.pumpWidget(const MyApp());

//     // Add additional tests to verify the Pokémon list is displayed
//     // This will depend on how you implement the home screen and Pokémon list
//   });
// }
