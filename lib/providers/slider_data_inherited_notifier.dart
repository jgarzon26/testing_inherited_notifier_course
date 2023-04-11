import 'package:flutter/cupertino.dart';
import 'package:testing_inherited_notifier_course/providers/slider_data_provider.dart';

class SliderDataInheritedNotifier
    extends InheritedNotifier<SliderDataProvider> {
  const SliderDataInheritedNotifier({
    Key? key,
    required SliderDataProvider sliderData,
    required Widget child,
  }) : super(
          key: key,
          child: child,
          notifier: sliderData,
        );

  static double of(BuildContext context) =>
      context
          .dependOnInheritedWidgetOfExactType<SliderDataInheritedNotifier>()
          ?.notifier
          ?.sliderValue ??
      0.0;
}
