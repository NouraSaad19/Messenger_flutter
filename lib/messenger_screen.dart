// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MeessengerScreen extends StatelessWidget {
  const MeessengerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 12, 11, 11),
        elevation: 0.0, //remove line
        titleSpacing: 20,
        title: Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            CircleAvatar(
              radius: 25.0,
              backgroundImage: NetworkImage(
                  'https://i.pinimg.com/736x/1f/b4/63/1fb463e820cd0feb85b5718036a9e568.jpg'),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Chats",
              style: TextStyle(
                  color: Color.fromARGB(255, 220, 219, 219), fontSize: 30),
            ),
          ],
        ),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          SizedBox(width: 10),
          IconButton(
              onPressed: null,
              icon: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 77, 73, 73),
                  child: Icon(
                    Icons.camera_alt,
                    color: Color.fromARGB(255, 220, 219, 219),
                  ))),
          IconButton(
              onPressed: null,
              icon: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 77, 73, 73),
                  child: Icon(
                    Icons.edit,
                    color: Color.fromARGB(255, 220, 219, 219),
                  ))),
        ],
      ),
      body: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 0,
                  ),
                  //search
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color.fromARGB(155, 111, 109, 109)),
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Color.fromARGB(109, 255, 255, 255),
                        ),
                        Text(
                          "Search",
                          style: TextStyle(
                              color: Color.fromARGB(109, 255, 255, 255)),
                        ),
                      ],
                    ),
                  ),

                  //story
                  Container(
                    height: 110,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return buildStory();
                      },
                      separatorBuilder: (context, index) => SizedBox(
                        //يعطيني مساحه بين الايتمز
                        width: 10,
                      ),
                      itemCount: 10,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //chats
                  Expanded(
                    child: ListView.separated(
                        itemBuilder: (context, index) {
                          return buildChat();
                        },
                        separatorBuilder: ((context, index) => SizedBox(
                              height: 10,
                            )),
                        itemCount: 5),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget buildStory() => Row(
      children: [
        Container(
          width: 60.0,
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Stack(
                  alignment: AlignmentDirectional
                      .bottomEnd, // عشان تنحط الدائره تحت تبع الاون لاين
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundImage: NetworkImage(
                          'https://i.pinimg.com/736x/1f/b4/63/1fb463e820cd0feb85b5718036a9e568.jpg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 2,
                      ),
                      child: CircleAvatar(
                        radius: 7,
                        backgroundColor: Colors.green,
                      ),
                    )
                  ]),
              SizedBox(
                height: 6,
              ),
              Text(
                "Noura Alnafeahh",
                style: TextStyle(color: Colors.white),
                maxLines: 2,
                overflow: TextOverflow
                    .ellipsis, //يعلمني ان التكست فيه تكمله اذا صار طويل
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ],
    );

Widget buildChat() => Row(
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
                "Noura Alnafea",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Hi how are you today? ytttttttttttttttttttttttttttttttt",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.white),
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
