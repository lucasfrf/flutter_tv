import 'package:flutter/material.dart';
import 'package:flutter_tv/screen/home_screen/section/drawer_tv.dart';
import 'package:flutter_tv/screen/home_screen/section/positioned/positioned_content.dart';
import 'package:flutter_tv/screen/login_screen/const/tab_list_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(
      length: tabListWidget().length,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FLUTTER TV'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: ('Esporte')),
            Tab(text: ('Carros')),
            Tab(text: ('Animais')),
          ],
        ),
      ),
      drawer: drawerTV(context),
      body: Stack(
        children: [
          TabBarView(
            controller: _tabController,
            children: tabListWidget(),
          ),
          positionedContent(_tabController!),
        ],
      ),
    );
  }
}
