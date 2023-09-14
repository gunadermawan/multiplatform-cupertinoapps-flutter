import 'package:flutter/cupertino.dart';

class FeedsPage extends StatelessWidget {
  const FeedsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text('Feeds Page'),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Feeds Page',
                style:
                    CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle,
              ),
              const SizedBox(
                height: 8,
              ),
              CupertinoButton(
                  child: const Text('select category'), onPressed: () {})
            ],
          ),
        ));
  }
}
