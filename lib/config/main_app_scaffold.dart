import 'package:flutter/material.dart';
import 'package:gpt_chat_rebuild/config/app_color.dart';
import 'package:gpt_chat_rebuild/widgets/popover/popover_controller.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

class MainAppScaffold extends StatefulWidget {
  final Widget child;
  const MainAppScaffold({Key? key, required this.child}) : super(key: key);

  @override
  State<MainAppScaffold> createState() => _MainAppScaffoldState();
}

class _MainAppScaffoldState extends State<MainAppScaffold> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      // observers: [
      //   SentryNavigatorObserver(),
      // ],
      onPopPage: (Route route, result) {
        if (route.didPop(result)) return true;
        return false;
      },
      pages: [
        MaterialPage(
            // Pop-over (tooltip) support
            child: Builder(
          builder: (BuildContext builderContext) {
            return PopOverController(
              // Draw a border around the entire window, because we're classy :)
              child: Scaffold(
                backgroundColor: AppColors.secondry,
                body: SafeArea(
                  // AppBar + Content
                  // This column has a reversed vertical direction, because we want the TitleBar to cast a shadow on the content below it.
                  child: Column(
                    verticalDirection: VerticalDirection.up,
                    children: [
                      // Bottom content area
                      Expanded(
                        child: widget.child,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ))
      ],
    );
  }
}
