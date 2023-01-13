import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gpt_chat_rebuild/constants/constants.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final StreamController<bool> isSwitchingTabStream = StreamController<bool>();
  bool isSwitchingTab = true;

  late TabController _tabController;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
          body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: 500,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: Container(),
                  )),
            ],
          )),
          Align(
            alignment: Alignment.center,
            child: IgnorePointer(
              ignoring: !isSwitchingTab,
              child: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                // indicatorWeight: 3,
                indicatorColor: const Color(0xff10AE6A),
                indicatorPadding: const EdgeInsets.symmetric(horizontal: 10),
                controller: _tabController,
                isScrollable: true,
                labelColor: const Color(0xff10AE6A),
                unselectedLabelColor: const Color(0xff4D4D4D),
                unselectedLabelStyle:
                    const TextStyle(fontSize: 16, color: Colors.black87),
                labelStyle: const TextStyle(
                    fontSize: 16,
                    color: Color(0xff10AE6A),
                    fontWeight: FontWeight.bold),
                tabs: [
                  SizedBox(
                      width: deviceWidth(context) / 2.5,
                      child: const Tab(text: "CUSTOMER")),
                  SizedBox(
                    width: deviceWidth(context) / 2.5,
                    child: const Tab(text: "SHOP MANAGER"),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
