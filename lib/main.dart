import 'package:boro_baaper_polay_khay/views/add_place.dart';
import 'package:boro_baaper_polay_khay/views/city_view.dart';
import 'package:boro_baaper_polay_khay/views/dashboard.dart';
import 'package:boro_baaper_polay_khay/views/destinations.dart';
import 'package:boro_baaper_polay_khay/views/single_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        // theme: ThemeData(
        //   primarySwatch: Colors.transparent,
        // ),
        debugShowCheckedModeBanner: false,
        initialRoute: '/dashboard',
        routes: {
          '/singleview': (context) => const SingleView(),
          '/cityview': (context) => const CityView(),
          '/dashboard': (context) => const MyDashboard(),
          '/addplace': (context) => const AddPlace(),
          '/destination': (context) => const Destinations(),
        });
  }
}
