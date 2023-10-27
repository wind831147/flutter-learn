import 'package:flutter/material.dart';
import 'package:flutter_learn/models/item.dart';

class ProfileListWidget extends StatelessWidget {
  final List<Profiles> profiles;

  const ProfileListWidget({required Key key, required this.profiles});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: profiles.length,
      itemBuilder: (BuildContext context, index) {
        final row = profiles[index];

        return InkWell(
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: row.backgroundColor,
              radius: 16,
              backgroundImage: NetworkImage(row.picUrl),
            ),
            title: Text(row.name),
            subtitle: Text(row.subTitle),
          ),
        );
      },
    );
  }
}
