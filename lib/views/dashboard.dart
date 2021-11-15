import 'package:boro_baaper_polay_khay/views/widgets/home_page_tab.dart';
import 'package:boro_baaper_polay_khay/views/widgets/item_card.dart';
import 'package:flutter/material.dart';

class MyDashboard extends StatefulWidget {
  const MyDashboard({Key? key}) : super(key: key);

  @override
  _MyDashboardState createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 3);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              margin: EdgeInsets.all(0),
              padding: EdgeInsets.all(0),
              child: Image.asset(
                'assets/images/app/dashboard.jpg',
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
              onTap: () => Navigator.pushNamed(context, '/destination'),
              leading: Icon(Icons.message),
              title: Text('Destinations'),
            ),
            Divider(thickness: 0.9,),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            Divider(thickness: 0.9,),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            Divider(thickness: 0.9,),
            ListTile(
              onTap: () => Navigator.pushNamed(context, '/addplace'),
              leading: Icon(Icons.add_a_photo),
              title: Text('Add Place'),
            ),
          ],
        ),
      ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            appBarSearch(),
            homePageTab(),
          ];
        },
        body: tabBarView(_tabController),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Color(0xff7b1fa2),
        onPressed: () => Navigator.of(context).pushNamed('/cityview'),
      ),
    );
  }

  HomePageTab homePageTab() {
    return HomePageTab(
      child: Container(
        height: 80,
        color: Color(0xff7b1fa2),
        child: TabBar(
          indicatorColor: Colors.deepPurpleAccent,
          padding: EdgeInsets.only(top: 10),
          labelColor: Colors.deepPurpleAccent,
          controller: _tabController,
          tabs: [
            Tab(
              child: trendTopText('Trend'),
            ),
            Tab(
              child: trendTopText('Top'),
            ),
            Tab(
              child: trendTopText('Featured'),
            ),
          ],
        ),
      ),
    );
  }

  Text trendTopText(String title) => Text(
        title,
        style: TextStyle(fontSize: 18, color: Colors.white),
      );

  SliverAppBar appBarSearch() {
    return SliverAppBar(
      backgroundColor: Color(0xff7b1fa2),
      expandedHeight: 200,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: [
            Container(
              foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Colors.black, Colors.transparent]),
              ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/app/dashboard.jpg'),
                      fit: BoxFit.cover)),
            ),
            Positioned(
              left: 20,
              top: 150,
              child: Text(
                'Find Your Sweetest \nDedstination',
                style: TextStyle(fontSize: 28, color: Colors.white),
              ),
            ),
            // Positioned(
            //   top: 150,
            //   left: 30,
            //   right: 130,
            //   child: Container(
            //     decoration: BoxDecoration(
            //       color: Colors.white,
            //       borderRadius: BorderRadius.circular(12),
            //     ),
            //     // width: MediaQuery.of(context).size.width,
            //     height: 50,
            //     child: AspectRatio(
            //       aspectRatio: 0.3,
            //       child: TextField(
            //         // style: TextStyle(decoration: TextDecoration.none),
            //         decoration: InputDecoration(
            //           focusedBorder: InputBorder.none,
            //           border: InputBorder.none,
            //           icon: Icon(Icons.search),
            //           hintText: 'Search District',
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            // Positioned(
            //   top: 150,
            //   right: 20,
            //   child: Container(
            //     decoration:
            //         BoxDecoration(borderRadius: BorderRadius.circular(12)),
            //     width: 100,
            //     height: 50,
            //     child: ElevatedButton(

            //       style: ButtonStyle(
            //           backgroundColor: MaterialStateProperty.all(
            //               Color(0xff7b1fa2),)),
            //       onPressed: () {},
            //       child: Text('Search'),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

TabBarView tabBarView(TabController _tabController) {
  return TabBarView(controller: _tabController, children: [
    DashBoardGridview(),
    DashBoardGridview(),
    ItemView(imageurl: 'gazipur.jpg'),
  ]);
}

class DashBoardGridview extends StatelessWidget {
  const DashBoardGridview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      return GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: 10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: orientation == Orientation.portrait ? 2 : 5,
        ),
        itemBuilder: (_, index) => ItemView(imageurl: 'gazipur.jpg'),
        itemCount: 40,
      );
    });
  }
}
