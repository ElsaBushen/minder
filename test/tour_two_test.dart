import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:minder/main.dart'; // Import the main.dart file

void main() {
  testWidgets('MyApp Widget Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the initial UI contains the expected widgets.
    expect(find.byType(MaterialApp), findsOneWidget); // Check if MaterialApp widget is present
    expect(find.byType(Scaffold), findsOneWidget); // Check if Scaffold widget is present
    expect(find.byType(Center), findsOneWidget); // Check if Center widget is present
    expect(find.byType(Container), findsOneWidget); // Check if Container widget is present
    expect(find.byType(Stack), findsOneWidget); // Check if Stack widget is present
    expect(find.byType(Positioned), findsNWidgets(11)); // Check if 11 Positioned widgets are present
    expect(find.byType(SizedBox), findsNWidgets(6)); // Check if 6 SizedBox widgets are present
    expect(find.byType(Icon), findsNWidgets(4)); // Check if 4 Icon widgets are present
    expect(find.byType(Text), findsNWidgets(3)); // Check if 3 Text widgets are present
    expect(find.byType(Image), findsNWidgets(3)); // Check if 3 Image widgets are present
    expect(find.text('Tap to delete this'), findsOneWidget); // Check if specific text widget is present
    expect(find.text('Select a transmogrifier to extract useful information from this conversation.'), findsOneWidget); // Check if specific text widget is present
  });
}
