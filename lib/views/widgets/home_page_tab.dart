import 'package:flutter/material.dart';

class HomePageTab extends StatelessWidget {
  final Widget child;
  const HomePageTab({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: HomepageSliverPersistentHeaderDelegate(child: child),
    );
  }
}

class HomepageSliverPersistentHeaderDelegate
    extends SliverPersistentHeaderDelegate {
  final Widget child;

  HomepageSliverPersistentHeaderDelegate({Key? key, required this.child});
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    return child;
  }

  @override
  double get maxExtent => 72;

  @override
  double get minExtent => 72;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
