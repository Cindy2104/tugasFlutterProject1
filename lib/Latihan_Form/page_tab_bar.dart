import 'package:flutter/material.dart';
import 'package:project1_bimbi/Latihan_Form/page_grid_view.dart';
import 'package:project1_bimbi/Latihan_Form/page_list_view.dart';
import 'package:project1_bimbi/Latihan_Form/page_resigter.dart';

class PageTabBar2 extends StatefulWidget {
  const PageTabBar2({super.key});

  @override
  State<PageTabBar2> createState() => _PageTabBar2State();
}

class _PageTabBar2State extends State<PageTabBar2>
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
        title: Text('Dosen', style: TextStyle(color: Colors.white)),
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
