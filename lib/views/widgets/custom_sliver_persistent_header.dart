import 'package:flutter/material.dart';

class CustomTabBarSliverPersistentHeader extends StatefulWidget {
  final TabController _controller;

  const CustomTabBarSliverPersistentHeader(this._controller, {Key? key})
      : super(key: key);

  @override
  State<CustomTabBarSliverPersistentHeader> createState() =>
      _CustomTabBarSliverPersistentHeaderState();
}

class _CustomTabBarSliverPersistentHeaderState
    extends State<CustomTabBarSliverPersistentHeader> {
  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: SliverPersistenDeligate(widget._controller),
    );
  }
}

class SliverPersistenDeligate extends SliverPersistentHeaderDelegate {
  final TabController _controller;
  SliverPersistenDeligate(this._controller);
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // print(shrinkOffset);
    return Container(
      padding: EdgeInsets.only(top: 28),
      color: Color(0xff7b1fa2),
      child: TabBar(
          indicatorColor: Colors.white,
          controller: _controller,
          tabs: [
            Tab(
              icon: Icon(
                Icons.call_to_action,
                color: Colors.white,
              ),
              child: Text(
                'Overviews',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.reviews,
                color: Colors.white,
              ),
              child: Text(
                'Reviews',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.perm_media,
                color: Colors.white,
              ),
              child: Text(
                'Media',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ]),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 88;

  @override
  // TODO: implement minExtent
  double get minExtent => 82;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return true;
  }
}
