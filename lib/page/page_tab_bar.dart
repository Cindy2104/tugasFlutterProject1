import 'package:flutter/material.dart';
import 'package:project1_bimbi/page/page_grid_view.dart';
import 'package:project1_bimbi/page/page_list_view.dart';
import 'package:project1_bimbi/page/page_resigter.dart';

class PageTabBar extends StatefulWidget {
  const PageTabBar({super.key});

  @override
  State<PageTabBar> createState() => _PageTabBarState();
}

class _PageTabBarState extends State<PageTabBar>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //appBar : properti dari sebuah widget
        //AppBar : widget
        title: Text('Nav bar', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.red,
        iconTheme: IconThemeData(color: Colors.white),
      ),

      body: TabBarView(
        controller: tabController,
        children: [PageResigter(), PageGridView(), PageListView()],
      ),
      bottomNavigationBar: BottomAppBar(
        child: TabBar(
          controller: tabController,
          tabs: [
            Tab(text: 'Form Register', icon: Icon(Icons.input)),
            Tab(text: 'Grid View', icon: Icon(Icons.grid_on)),
            Tab(text: 'List View', icon: Icon(Icons.list)),
          ],
        ),
      ),
    );
  }
}
