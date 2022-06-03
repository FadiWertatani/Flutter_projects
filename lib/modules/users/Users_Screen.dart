import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UsersModel {
  final int id;
  final String name;
  final String phone;

  UsersModel({
    required this.id,
    required this.name,
    required this.phone,
  });
}

class UsersScreen extends StatelessWidget {
  List<UsersModel> users = [
    UsersModel(
      id: 1,
      name: 'Fadi Wertatani',
      phone: '+216 93 007 457',
    ),
    UsersModel(
      id: 2,
      name: 'Sahouma',
      phone: '+216 95 325 554',
    ),
    UsersModel(
      id: 3,
      name: 'Firas Wertatani',
      phone: '+216 95 750 603',
    ),
    UsersModel(
      id: 4,
      name: 'Alma Saidani',
      phone: 'Invalid Number',
    ),
    UsersModel(
      id: 5,
      name: 'Faouzi',
      phone: '+216 97 733 953',
    ),
    UsersModel(
      id: 6,
      name: 'Fadi A',
      phone: '+216 25 254 243',
    ),
    UsersModel(
      id: 7,
      name: 'Adnen',
      phone: '+49 15145138434',
    ),
    UsersModel(
      id: 8,
      name: 'Fakhri',
      phone: '+216 92 235 827',
    ),
    UsersModel(
      id: 9,
      name: 'Aziz Binomi',
      phone: '+216 98 187 299',
    ),
    UsersModel(
      id: 10,
      name: 'Mma',
      phone: '+216 95 857 440',
    ),
    UsersModel(
      id: 11,
      name: 'M H M',
      phone: '+216 94 756 058',
    ),
    UsersModel(
      id: 12,
      name: 'Mootaz',
      phone: '+216 92 138 325',
    ),
    UsersModel(
      id: 13,
      name: 'Oua Hsin',
      phone: '+216 27 481 793',
    ),
    UsersModel(
      id: 14,
      name: 'Mahdi F',
      phone: '+216 94 138 886',
    ),
    UsersModel(
      id: 15,
      name: 'N Ben Taher',
      phone: '+216 27 490 814',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Users',
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => buildUsersItem(users[index]),
        separatorBuilder: (context, index) => Container(
          color: Colors.grey[300],
          height: 1.0,
        ),
        itemCount: users.length,
      ),
    );
  }

  Widget buildUsersItem(UsersModel user) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            CircleAvatar(
              child: Text(
                '${user.id}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${user.name}',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '${user.phone}',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            )
          ],
        ),
      );
}
