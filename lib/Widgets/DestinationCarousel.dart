import 'package:flutter/material.dart';
import 'package:flutter_travel_ui_starter/models/destination_model.dart';

class DestinationCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Top Destinations',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(
                  onTap: () => print('see all'),
                  child: Text(
                    'See all',
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.lightBlue),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 250,
            color: Colors.cyan,
            child: ListView.builder(
              itemCount: destinations.length,
              itemBuilder: (BuildContext context, int index) {
                return Text(destinations[index].city);
              },
            ),
          )
        ],
      ),
    );
  }
}
