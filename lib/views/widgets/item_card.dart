import 'package:flutter/material.dart';

class ItemView extends StatelessWidget {
  final String imageurl;
  const ItemView({Key? key, required this.imageurl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.red,
      height: 200,
      child: Stack(
        children: [
          InkWell(
            onTap: () => Navigator.pushNamed(context, '/singleview'),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 10),
              height: 250,
              width: 200,
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
            top: 120,
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
              top: 140,
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
              top: 150,
              left: 20,
              child: Text(
                'Review (321)',
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
