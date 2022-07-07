import 'package:dance_judge_system/page/judge_page.dart';
import 'package:dance_judge_system/page/judge_entorylist_page.dart';
import 'package:dance_judge_system/page/my_home_page.dart';
import 'package:dance_judge_system/page/organizer_page.dart';
import 'package:dance_judge_system/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final _router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: 'home',
      path: '/',
      pageBuilder: (context, state) => MaterialPage(
        key: state.pageKey,
        child: const MyHomePage(
          title: 'JudgeSystem',
        ),
      ),
    ),
    GoRoute(
      name: 'organizer',
      path: '/organizer',
      pageBuilder: (context, state) => MaterialPage(
        key: state.pageKey,
        child: const OrganizerPage(),
      ),
    ),
    GoRoute(
      name: 'judge',
      path: '/judge',
      pageBuilder: (context, state) => MaterialPage(
        key: state.pageKey,
        child: const JudgePage(),
      ),
    ),
    GoRoute(
      name: 'judgeEntryList',
      path: '/judgeEntryList',
      pageBuilder: (context, state) => MaterialPage(
        key: state.pageKey,
        child: const JudgeEntryListPage(),
      ),
    ),
  ],
  //遷移ページがないなどのエラーが発生した時に、このページに行く
  errorPageBuilder: (context, state) => MaterialPage(
    key: state.pageKey,
    child: Scaffold(
      body: Center(
        child: Text(state.error.toString()),
      ),
    ),
  ),
);

//①RiverPod適用のため、ProviderScopeで囲む。
void main() {
  runApp(const ProviderScope(child: MyApp()));
}

//②ConsumerWidgetを継承する。
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // ③　WidgetRef refを追加。
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: _router.routerDelegate,
      routeInformationParser: _router.routeInformationParser,
    );
  }
}

//ConsumerStatefulWidgetに変更する。
