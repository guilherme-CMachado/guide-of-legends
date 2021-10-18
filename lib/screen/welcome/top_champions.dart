import 'package:flutter/material.dart';
import 'package:guide_of_legends/models/champions.dart';
import 'package:guide_of_legends/screen/welcome/widgets/circle_profile.dart';

class TopChampionsWidget extends StatelessWidget {
  final List<Champion> champions;
  TopChampionsWidget({this.champions});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: champions.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/profile",
                  arguments: champions[index]);
            },
            child: Hero(
              tag: champions[index].id,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: CircleProfile(
                  image: champions[index].image,
                  width: 50,
                  height: 50,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
