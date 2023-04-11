import 'package:flutter/material.dart';
import 'package:testing_inherited_notifier_course/providers/slider_data_inherited_notifier.dart';

import '../../providers/slider_data_provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const defaultSize = 200.00;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: SliderDataInheritedNotifier(
        sliderData: sliderDataProvider,
        child: Builder(builder: (context) {
          return Column(
            children: [
              Slider(
                value: SliderDataInheritedNotifier.of(context),
                onChanged: (value) {
                  sliderDataProvider.sliderValue = value;
                },
              ),
              Opacity(
                opacity: SliderDataInheritedNotifier.of(context),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      height: defaultSize,
                      color: Colors.yellow,
                    ),
                    Container(
                      height: defaultSize,
                      color: Colors.blue,
                    ),
                  ].expandEqually().toList(),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}

extension ExpandEqually on Iterable<Widget> {
  Iterable<Widget> expandEqually() => map(
        (e) => Expanded(
          child: e,
        ),
      );
}
