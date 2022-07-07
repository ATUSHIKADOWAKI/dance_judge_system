import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class JudgePage extends ConsumerStatefulWidget {
  const JudgePage({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _JudgePageState();
}

class _JudgePageState extends ConsumerState<JudgePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ジャッジ'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(('ジャッジするイベントを選択する。')),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
                onPressed: () {
                  context.push('/judgeEntryList');
                },
                child: Text('イベント１')),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(onPressed: () {}, child: Text('イベント２')),
          ],
        ),
      ),
    );
  }
}
