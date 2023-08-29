import 'package:flutter_test/flutter_test.dart';

import 'general_test_screen.dart';

abstract class ProfileTestScreen {
  /// поле Surname на экране персональных данных
  static Finder surnameField = GeneralTestScreen.textField('Surname');

  /// поле Birthday на экране персональных данных
  static Finder birthdayField = GeneralTestScreen.textField('Birthday');

  /// поле Name на экране персональных данных
  static Finder nameField = GeneralTestScreen.textField('Name');

  /// поле SecondName на экране персональных данных
  static Finder secondNameField = GeneralTestScreen.textField('SecondName');

  /// поле Place на экране Place of residence
  static Finder placeOfResidenceField = GeneralTestScreen.textField('Place of residence');

  /// Кнопка NextStep
  static Finder nextStepButton = GeneralTestScreen.nextButton();

  /// CheckBox с интересами
  static Finder checkBox = GeneralTestScreen.checkBox('Sleep');
}