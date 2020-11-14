import 'package:flutter/material.dart';
import './screens/places_list_screen.dart';
import 'package:provider/provider.dart';
import './providers/great_places.dart';
import './screens/add_place_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider.value(
      value: GreatPlace(),
      child: MaterialApp(
        title: 'Great Places',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          accentColor: Colors.amber,
        ),
        home: PlaceListScreen(),
        routes: {
          AddPlaceScreen.routeName: (ctx) => AddPlaceScreen(),
        },
      ),
    ),
  );
}
