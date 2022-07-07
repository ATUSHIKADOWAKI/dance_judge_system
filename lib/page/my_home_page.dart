import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {
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
            SizedBox(
              width: 150.0,
              child: ElevatedButton(
                  onPressed: () {
                    context.push('/organizer');
                  },
                  child: Text('オーガナイザー')),
            ),
            SizedBox(
              height: 20.0,
            ),
            SizedBox(
              width: 150.0,
              child: ElevatedButton(
                  onPressed: () {
                    context.push('/judge');
                  },
                  child: Text('ジャッジ')),
            ),
            SizedBox(
              height: 20.0,
            ),
            SizedBox(
                width: 150.0,
                child: ElevatedButton(onPressed: () {}, child: Text('参加者'))),
          ],
        ),
      ),
    );
  }
}
