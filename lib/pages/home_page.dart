import 'package:flutter/material.dart';

import '../settings/app_settings.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final settings = AppSettings();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: settings.increment,
                  child: const Icon(Icons.add),
                ),
                const SizedBox(width: 30),
                ValueListenableBuilder<int>(
                    valueListenable: settings.counter$,
                    builder: (context, value, child) {
                      return Text(
                        'Counter: ${settings.counter}',
                      );
                    }),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: settings.toggleSelection,
                  child: const Text('Toggle'),
                ),
                const SizedBox(width: 30),
                ValueListenableBuilder<bool>(
                  valueListenable: settings.selection$,
                  builder: (context, value, child) {
                    return Text(
                      'Selection: ${settings.selection}',
                      style: Theme.of(context).textTheme.titleMedium,
                    );
                  },
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: settings.toggleState,
                  child: const Text('Toggle'),
                ),
                const SizedBox(width: 30),
                ValueListenableBuilder<ThreeState>(
                  valueListenable: settings.state$,
                  builder: (context, value, child) {
                    return Text(
                      'State: ${settings.state.name}',
                      style: Theme.of(context).textTheme.titleMedium,
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
