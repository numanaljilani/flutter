import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myapp/app/app.dart';

void main(){
  testWidgets("my flutter app", (WidgetTester  tester) async {
    await tester.pumpWidget(const myapp());

    expect(find.byType(Container), findsOneWidget);
  });
}