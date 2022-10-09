import 'package:flutter/material.dart';
import 'package:massenger/UserModel.dart';

class UsersScreen extends StatelessWidget {
  List<UserModel> users = [
    UserModel(id: 1, name: "noura", phone: "050000"),
    UserModel(id: 2, name: "saad", phone: "0500005"),
    UserModel(id: 3, name: "saleh", phone: "0555566"),
    UserModel(id: 1, name: "noura", phone: "050000"),
    UserModel(id: 2, name: "saad", phone: "0500005"),
    UserModel(id: 3, name: "saleh", phone: "0555566"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("USERS"),
      ),
      body: Container(
        padding: const EdgeInsets.all(25),
        child: ListView.separated(
            shrinkWrap: true,
            //physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return buildChat(users[index]);
            },
            separatorBuilder: ((context, index) => SizedBox(
                  height: 10,
                )),
            itemCount: users.length),
      ),
    );
  }
}

Widget buildChat(UserModel user) => Row(
      children: [
        Stack(
            alignment: AlignmentDirectional
                .bottomEnd, // عشان تنحط الدائره تحت تبع الاون لاين
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                    'https://i.pinimg.com/736x/1f/b4/63/1fb463e820cd0feb85b5718036a9e568.jpg'),
              ),
              Padding(padding: EdgeInsets.only(bottom: 5)),
              CircleAvatar(
                radius: 7.0,
                backgroundColor: Colors.green,
              ),
            ]),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                user.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Color.fromARGB(255, 15, 13, 13)),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                user.phone,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Color.fromARGB(255, 15, 13, 13)),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Hi how are you today? ytttttttttttttttttttttttttttttttt",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Color.fromARGB(255, 11, 9, 9)),
              ),
            ],
          ),
        ),
        Text(
          "02:00",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
