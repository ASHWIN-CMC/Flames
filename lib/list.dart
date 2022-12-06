import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListCard extends StatelessWidget {
  const ListCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage("lib/images/zome.jpg"),
          ),
          title: Row(
            children: [
              Text("Jordan"),
              SizedBox(width: 3),
              Icon(
                Icons.verified,
                color: Colors.blue,
                size: 18,
              ),
            ],
          ),
          subtitle: Text("Hi"),
          trailing: Stack(
            children: [
              Text("13:10"),
            ],
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage("lib/images/zome.jpg"),
          ),
          title: Row(
            children: [
              Text("Tim"),
              SizedBox(width: 3),
            ],
          ),
          subtitle: Text("Hi"),
          trailing: Stack(
            children: [
              Text("13:10"),
            ],
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage("lib/images/zome.jpg"),
          ),
          title: Row(
            children: [
              Text("James"),
              SizedBox(width: 3),
              Icon(
                Icons.verified,
                color: Colors.blue,
                size: 18,
              ),
            ],
          ),
          subtitle: Text(
            "Typing...",
            style: TextStyle(color: Colors.pink),
          ),
          trailing: Stack(
            children: [
              Text("13:10"),
            ],
          ),
        ),
      ],
    );
  }
}
