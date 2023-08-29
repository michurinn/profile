import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

abstract class GeneralTestScreen {
  /// текстовое поле [TextField] по подсказке или хинту [hint]. Строгое соответствие
  static Finder textField(String hint) => find.byWidgetPredicate((widget) {
        return widget is TextField &&
            ((widget.decoration?.labelText == hint) ||
                (widget.decoration?.hintText == hint));
      });

  /// Кнопка со стрекой [ElevatedButton]
  static Finder nextButton() => find.byWidgetPredicate((widget) {
    //  Поскольку кнопка единственная на экране
        return widget is ElevatedButton;
      });

  /// CheckBox с названием интереса
  static Finder checkBox(String label) => find.byWidgetPredicate((widget) {
    // TODO(me): Не успел найти решение  
        return widget is Checkbox && widget.onChanged == () {};
      });
}
