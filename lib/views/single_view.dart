import 'package:boro_baaper_polay_khay/views/widgets/custom_sliver_persistent_header.dart';
import 'package:flutter/material.dart';

class SingleView extends StatefulWidget {
  const SingleView({Key? key}) : super(key: key);

  @override
  State<SingleView> createState() => _SingleViewState();
}

class _SingleViewState extends State<SingleView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 3);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            appBar(),
            textAndAll(
                'Pura Ullan Dhanu', 'North Bali, Indonesia', '01790220088'),
            CustomTabBarSliverPersistentHeader(_tabController),
          ];
        },
        body: tabBarView(),
      ),
    );
  }

  TabBarView tabBarView() {
    return TabBarView(controller: _tabController, children: [
      PageTwo(),
      Center(
        child: Text("It's cloudy here"),
      ),
      Center(
        child: Text("It's yellow here"),
      ),
    ]);
  }

  SliverToBoxAdapter textAndAll(String header, String location, String phone) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    header,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.room, color: Colors.deepPurpleAccent),
                    Text(
                      location,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.deepPurpleAccent,
                    ),
                    Text(
                      'Phone: $phone',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
            //Ratings starts
            Row(
              children: [
                Column(
                  children: [
                    Icon(Icons.star_rate, color: Colors.deepPurpleAccent),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '4.8',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text(
                      'Ratings',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  SliverAppBar appBar() {
    return SliverAppBar(
      // floating: true,
      // leading: Icon(Icons.arrow_back),
      backgroundColor: Colors.white,

      // pinned: true,
      expandedHeight: 420,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text('LalBag Kella'),
        background: DecoratedBox(
          position: DecorationPosition.foreground,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(65)),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.transparent, Colors.black45]),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(65)),
            child: Hero(
              tag: 'dhaka.jpg',
              child: Image.asset(
                'assets/images/city/dhaka.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (context, index) => Container(
        padding: EdgeInsets.all(2.0),
        child: Material(
          elevation: 4.0,
          borderRadius: BorderRadius.circular(5.0),
          color: index % 2 == 0 ? Colors.cyan : Colors.deepOrange,
          child: Center(
            child: Text(''' 
                  @override
                          Widget build(BuildContext context) {
                            return DefaultTabController(
                              length: 3,
                              child: Container(
                                  child: CustomScrollView(slivers: <Widget>[
                                SliverAppBar(),
                                new SliverFillRemaining(
                                  child: TabBarView(
                  children: <Widget>[
                    Text("Tab 1"),
                    Text("Tab 2"),
                    Text("Tab 3"),
                  ],
                                  ),
                                ),
                              ])),
                            );
                            @override
                          Widget build(BuildContext context) {
                            return DefaultTabController(
                              length: 3,
                              child: Container(
                                  child: CustomScrollView(slivers: <Widget>[
                                SliverAppBar(),
                                new SliverFillRemaining(
                                  child: TabBarView(
                  children: <Widget>[
                    Text("Tab 1"),
                    Text("Tab 2"),
                    Text("Tab 3"),
                  ],
                                  ),
                                ),
                              ])),
                            );
                          }@override
                          Widget build(BuildContext context) {
                            return DefaultTabController(
                              length: 3,
                              child: Container(
                                  child: CustomScrollView(slivers: <Widget>[
                                SliverAppBar(),
                                new SliverFillRemaining(
                                  child: TabBarView(
                  children: <Widget>[
                    Text("Tab 1"),
                    Text("Tab 2"),
                    Text("Tab 3"),
                  ],
                                  ),
                                ),
                              ])),
                            );
                          }@override
                          Widget build(BuildContext context) {
                            return DefaultTabController(
                              length: 3,
                              child: Container(
                                  child: CustomScrollView(slivers: <Widget>[
                                SliverAppBar(),
                                new SliverFillRemaining(
                                  child: TabBarView(
                  children: <Widget>[
                    Text("Tab 1"),
                    Text("Tab 2"),
                    Text("Tab 3"),
                  ],
                                  ),
                                ),
                              ])),
                            );
                          }
                          }
                          This RenderObject had the following descendants (showing up to depth 5):
      child: RenderRepaintBoundary#055a8 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
        child: RenderCustomPaint#2b196 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
    child: RenderRepaintBoundary#1519e NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
      child: _RenderScrollSemantics#f083e NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
        child: RenderPointerListener#8449a NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
                  '''),
          ),
        ),
      ),
    );
  }
}
