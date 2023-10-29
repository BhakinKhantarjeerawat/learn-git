import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:learn_flutter_test/main.dart';

void main() {
  testWidgets('Cancel logout', (tester) async {
    // pump
    await tester.pumpWidget(
      const ProviderScope(
        child: MaterialApp(
          home: MainApp(),
        ),
      ),
    );
    // find logout button and tap it
    final logoutButton = find.text('to_second_screen');
    expect(logoutButton, findsOneWidget);
    await tester.tap(logoutButton);
    await tester.pumpAndSettle();

   final text1 = find.byKey(const Key('secondScreenText'));
    expect(text1, findsOneWidget);

  //   final text1 = find.byKey(const Key('text1'));
  //   expect(text1, findsOneWidget);
  // final icon1 = find.byKey(const Key('icon1'));
  //   expect(icon1, findsOneWidget);

  //   await tester.tap(logoutButton);
  //   await tester.pump();
  //   final icon2 = find.byKey(const Key('icon2'));
  //   expect(icon2, findsOneWidget);

  //    final text2 = find.byKey(const Key('text2'));
  //   expect(text2, findsOneWidget);

    // final text2 =  find.text('button_pressed');
    // expect(text2, findsOneWidget);

    // await tester.tap(logoutButton);
    //   await tester.pump();

    //  find.text('Hello World!');
    // expect(logoutButton, findsNothing);
  });
}
