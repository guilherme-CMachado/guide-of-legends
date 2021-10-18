import 'package:flutter/material.dart';
import 'package:guide_of_legends/models/champions.dart';
import 'package:guide_of_legends/screen/welcome/profile/stats_text.dart';
import 'package:guide_of_legends/screen/welcome/widgets/circle_profile.dart';
import 'package:guide_of_legends/screen/welcome/widgets/feed.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Champion champion = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          champion.name,
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Hero(
              tag: champion.id,
              child: CircleProfile(
                image: champion.image,
                width: 80,
                height: 80,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              champion.name,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Stats(
                  title: "HP",
                  value: champion.stats.hp,
                ),
                Stats(
                  title: "HPREGEN",
                  value: champion.stats.hpRegen,
                  titleSize: 12,
                ),
                Stats(
                  title: "MP",
                  value: champion.stats.mp,
                ),
                Stats(
                  title: "MPREGEN",
                  value: champion.stats.mpRegen,
                  titleSize: 12,
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Stats(
                  title: "ATTACK",
                  value: champion.stats.attackDamage,
                ),
                Stats(
                  title: "ATTACKSPEED",
                  value: champion.stats.attackSpeed,
                  titleSize: 12,
                ),
                Stats(
                  title: "ATTACKRANGE",
                  value: champion.stats.attackRange,
                  titleSize: 12,
                ),
              ],
            ),
            Divider(
              height: 30,
              color: Theme.of(context).accentColor,
              thickness: 1,
            ),
            SingleChildScrollView(
              child: Feed(
                champion: champion,
              ),
            )
          ],
        ),
      ),
    );
  }
}
