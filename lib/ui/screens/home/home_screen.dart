import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:health_walk/ui/screens/calendar/calendar_screen.dart';
import 'package:health_walk/ui/screens/setting/setting_screen.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TabAndScreen {
  Tab tab;
  Widget screen;

  TabAndScreen(this.tab, this.screen);
}

/// タブ切り替え画面
final List<TabAndScreen> tabList = [
  TabAndScreen(const Tab(child: Text('カレンダー')), const CalendarScreen()),
  TabAndScreen(const Tab(child: Text('設定')), const SettingScreen()),
];

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _tabController = useTabController(initialLength: tabList.length);

    useEffect(() {
      _tabController.addListener(() {
        print('object');
        FocusScope.of(context).unfocus();
      });
    }, []);

    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          top: false,
          child: DefaultTabController(
            initialIndex: 0, // 最初に表示するタブ
            length: tabList.length, // タブの数
            child: Scaffold(
              appBar: AppBar(
                title: const Text('Health Walking'),
                bottom: TabBar(
                  controller: _tabController,
                  tabs: tabList.map((tab) => tab.tab).toList(),
                ),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.settings),
                    onPressed: () {},
                  ),
                ],
              ),
              body: TabBarView(
                controller: _tabController,
                children: tabList.map((tab) => tab.screen).toList(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
