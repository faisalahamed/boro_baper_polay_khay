import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CityView extends StatelessWidget {
  const CityView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          appBar(),
          textAndAll('Food'),
          rowImage(),
          textAndAll('Hotel'),
          rowImage(),
          textAndAll('Park'),
          rowImage(),
          textAndAll('Resort'),
          rowImage(imageurl: 'hotel.jpg'),
        ],
      ),
    );
  }

  SliverToBoxAdapter rowImage({imageurl = 'dhaka.jpg'}) {
    return SliverToBoxAdapter(
      child: SizedBox(
        // color: Colors.red,
        height: 200,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Stack(
              children: [
                InkWell(
                  onTap: () => Navigator.pushNamed(context, '/singleview'),
                  child: Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 2, vertical: 10),
                    height: 200,
                    width: 150,
                    foregroundDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [Colors.black54, Colors.transparent]),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Hero(
                        tag: '$imageurl',
                        child: Image.asset(
                          'assets/images/city/$imageurl',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 140,
                  left: 20,
                  child: Text(
                    'Hotel',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Positioned(
                    top: 160,
                    left: 20,
                    child: Row(
                      children: [
                        Icon(
                          Icons.star_rate,
                          size: 12,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.star_rate,
                          size: 12,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.star_rate,
                          size: 12,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.star_rate,
                          size: 12,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.star_rate,
                          size: 12,
                          color: Colors.white,
                        ),
                      ],
                    )),
                Positioned(
                    top: 170,
                    left: 20,
                    child: Text(
                      'Review (321)',
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            );
          },
        ),
      ),
    );
  }

  SliverToBoxAdapter textAndAll(String header) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              header,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Icon(Icons.arrow_forward)
          ],
        ),
      ),
    );
  }

  SliverAppBar appBar() {
    return SliverAppBar(
      systemOverlayStyle: SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.light),
      backgroundColor: Color(0xff7b1fa2),
      // floating: true,
      leading: Icon(Icons.arrow_back),
      pinned: true,
      expandedHeight: 220,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text('Discover Gazipur'),
        background: DecoratedBox(
          position: DecorationPosition.foreground,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.transparent, Colors.black45]),
          ),
          child: Image.asset(
            'assets/images/city/dhaka.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
