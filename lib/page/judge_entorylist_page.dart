import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class JudgeEntryListPage extends ConsumerStatefulWidget {
  const JudgeEntryListPage({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _JudgeEntryListPage();
}

class _JudgeEntryListPage extends ConsumerState<JudgeEntryListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('エントリーリスト'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child: ListTile(
                  leading: CircleAvatar(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image(
                        height: 300.0,
                        width: double.infinity,
                        image: AssetImage('images/nakamu.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  title: Text('ナカムー'),
                  subtitle: Text('タコベル'),
                  trailing: Text('Score: 9.7'),
                  onTap: () {},
                ),
              ),
              Card(
                child: ListTile(
                  leading: CircleAvatar(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image(
                        height: 300.0,
                        width: double.infinity,
                        image: AssetImage('images/nakamu.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  title: Text('キャスパー'),
                  subtitle: Text('Skill Brat Renegades'),
                  trailing: Text('Score: 8.8'),
                  onTap: () {},
                ),
              ),
              Card(
                child: ListTile(
                  leading: CircleAvatar(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image(
                        height: 300.0,
                        width: double.infinity,
                        image: AssetImage('images/nakamu.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  title: Text('マルシオ'),
                  subtitle: Text('Flying Steps'),
                  trailing: Text('Score: 7.7'),
                  onTap: () {},
                ),
              ),
              Card(
                child: ListTile(
                  leading: CircleAvatar(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image(
                        height: 300.0,
                        width: double.infinity,
                        image: AssetImage('images/nakamu.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  title: Text('キッドコロンビア'),
                  subtitle: Text('Hustle Kids'),
                  trailing: Text('Score: 7.2'),
                  onTap: () {},
                ),
              ),
              Card(
                child: ListTile(
                  leading: CircleAvatar(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image(
                        height: 300.0,
                        width: double.infinity,
                        image: AssetImage('images/nakamu.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  title: Text('リルジー'),
                  subtitle: Text('Red Bull BC One All Stars'),
                  trailing: Text('Score: 8.7'),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
