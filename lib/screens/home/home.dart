import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const defaultSize = 200.00;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Column(
        children: [
          Slider(
            value: 0.0,
            onChanged: (value) {},
          ),
          Row(
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
        ],
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
