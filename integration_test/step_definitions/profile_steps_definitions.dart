import 'package:flutter/material.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

import '../../test_screen/test_screen_library.dart';


abstract class ProfileStepDefinitions {
  static Iterable<StepDefinitionGeneric> get steps => [
        given1<String, FlutterWidgetTesterWorld>(
          RegExp(r'Я указываю фамилию {string}$'),
          (surname, context) async {
            final tester = context.world.rawAppDriver;
            await tester.pumpAndSettle();
            await tester.enterText(ProfileTestScreen.surnameField, surname);
            await tester.pump();
          },
        ),
        given1<String, FlutterWidgetTesterWorld>(
          RegExp(r'Я указываю дату рождения {string}$'),
          (birthdate, context) async {
            final tester = context.world.rawAppDriver;
            await tester.pumpAndSettle();
            tester
                .widget<TextField>(ProfileTestScreen.birthdayField)
                .controller
                ?.text = birthdate;
            await tester.pump();
          },
        ),
        given1<String, FlutterWidgetTesterWorld>(
          RegExp(r'Я указываю имя {string}$'),
          (name, context) async {
            final tester = context.world.rawAppDriver;
            await tester.pumpAndSettle();
            tester
                .widget<TextField>(ProfileTestScreen.nameField)
                .controller
                ?.text = name;
            await tester.pump();
          },
        ),
        given1<String, FlutterWidgetTesterWorld>(
          RegExp(r'Я указываю отчество {string}$'),
          (secondName, context) async {
            final tester = context.world.rawAppDriver;
            await tester.pumpAndSettle();
            tester
                .widget<TextField>(ProfileTestScreen.secondNameField)
                .controller
                ?.text = secondName;
            await tester.pump();
          },
        ),
        given1<String, FlutterWidgetTesterWorld>(
          RegExp(r'Я перехожу далее $'),
          (button,context) async {
            final tester = context.world.rawAppDriver;
            await tester.pumpAndSettle();
            await tester.tap(ProfileTestScreen.nextStepButton);
            await tester.pump();
          },
        ),
        given1<String, FlutterWidgetTesterWorld>(
          RegExp(r'Я выбираю город {string}$'),
          (city, context) async {
            final tester = context.world.rawAppDriver;
            await tester.pumpAndSettle();
            tester
                .widget<TextField>(ProfileTestScreen.secondNameField)
                .controller
                ?.text = city;
            await tester.pump();
          },
        ),
      ];
}