import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OrganizerPage extends ConsumerStatefulWidget {
  const OrganizerPage({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _OrganizerPageState();
}

class _OrganizerPageState extends ConsumerState<OrganizerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('オーガナイザー'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: Text('新規作成')),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(onPressed: () {}, child: Text('既存イベント')),
          ],
        ),
      ),
    );
  }
}
