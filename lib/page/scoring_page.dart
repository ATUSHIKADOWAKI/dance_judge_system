import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../state.dart';

class ScoringPage extends ConsumerStatefulWidget {
  const ScoringPage({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _ScoringPage();
}

class _ScoringPage extends ConsumerState<ScoringPage> {
  @override
  Widget build(BuildContext context) {
    final score = ref.watch(scoreProvider).toStringAsFixed(1);

    return Scaffold(
      appBar: AppBar(
        title: Text('点数式'),
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => FocusScope.of(context).unfocus(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('エントリーNo.1'),
                      Text('ナカムー'),
                      SizedBox(
                        height: 20.0,
                      ),
                      SizedBox(
                        width: 120.0,
                        height: 120.0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(60.0),
                          child: Image(
                            height: 300.0,
                            width: double.infinity,
                            image: AssetImage('images/nakamu.jpeg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Text('Score'),
                    SizedBox(
                      width: 120.0,
                      child: TextField(
                        textAlign: TextAlign.center,
                        maxLength: 3,
                        controller:
                            TextEditingController(text: score.toString()),
                        style: TextStyle(
                          fontSize: 60,
                        ),
                        onChanged: (score) {
                          score = score;
                        },
                        decoration: InputDecoration(
                          hintMaxLines: 1,
                          hintText: '0',
                          counterText: '',
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton(
                    color: Colors.red,
                    onPressed: () {
                      ref.read(scoreProvider.notifier).decrement();
                    },
                    icon: Icon(Icons.remove_circle),
                  ),
                  IconButton(
                    color: Colors.green,
                    onPressed: () {
                      ref.read(scoreProvider.notifier).increment();
                    },
                    icon: Icon(Icons.add_circle),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
