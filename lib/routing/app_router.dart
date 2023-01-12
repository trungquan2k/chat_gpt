import 'package:flutter/material.dart';
import 'package:gpt_chat_rebuild/config/main_app_scaffold.dart';
import 'package:gpt_chat_rebuild/feature/chat/chat_gpt.dart';

class AppRootPage extends StatefulWidget {
  const AppRootPage({Key? key}) : super(key: key);

  @override
  State<AppRootPage> createState() => _AppRootPageState();
}

class _AppRootPageState extends State<AppRootPage> {
  @override
  Widget build(BuildContext context) {
    return MainAppScaffold(
      child: Navigator(
        // onPopPage: _handleNavigatorPop,
        pages: [..._buildPageList(context, 1)],
      ),
    );
  }

  List<Page> _buildPageList(BuildContext context, int number) {
    switch (number) {
      case 1:
        return [_createContentInPage(const ChatGptPage())];
      default:
        return [_createContentInPage(const ChatGptPage())];
    }
  }

  Page _createContentInPage(Widget e) {
    return MaterialPage<void>(
      child: e,
    );
  }
}
