import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Messanger extends StatelessWidget {
  const Messanger({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              ClipOval(
                child: Image(
                  image: AssetImage(
                    'me.jpg',
                  ),
                ),
              ),
              ClipOval(
                child: Container(
                  color: Colors.black,
                  child: Padding(
                    padding: const EdgeInsetsDirectional.only(
                      bottom: 2.0,
                      start: 2.0,
                    ),
                    child: CircleAvatar(
                      child: Text(
                        '4',
                        style: TextStyle(
                          fontSize: 12.0,
                        ),
                      ),
                      radius: 7.0,
                      backgroundColor: Colors.red,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        title: Text(
          'Chats',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.grey.withOpacity(.3),
            child: IconButton(
              icon: Icon(
                Icons.camera_alt,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey.withOpacity(.3),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.create,
                color: Colors.black,
              ),
            ),
          ),
        ],
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.grey,
                  hintText: 'Search',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50.0),
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 15.0,
              ),
              Container(
                width: double.infinity,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 60.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ClipOval(
                              child: MaterialButton(
                                onPressed: () {},
                                height: 60.0,
                                minWidth: 60.0,
                                color: Colors.grey[200],
                                child: Icon(
                                  Icons.video_call_rounded,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Create cidéo call',
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Container(
                        width: 60.0,
                        child: Column(
                          children: [
                            Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: [
                                ClipOval(
                                  child: Image(
                                    width: 60.0,
                                    height: 60.0,
                                    image: AssetImage(
                                      'assets/me.jpg',
                                    ),
                                  ),
                                ),
                                CircleAvatar(
                                  radius: 7.0,
                                  backgroundColor: Colors.greenAccent,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              '  Fadi Wertatani',
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Container(
                        width: 60.0,
                        child: Column(
                          children: [
                            Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: [
                                ClipOval(
                                  child: Image(
                                    width: 60.0,
                                    height: 60.0,
                                    image: AssetImage(
                                      'assets/me.jpg',
                                    ),
                                  ),
                                ),
                                CircleAvatar(
                                  radius: 7.0,
                                  backgroundColor: Colors.greenAccent,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              '  Fadi Wertatani',
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Container(
                        width: 60.0,
                        child: Column(
                          children: [
                            Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: [
                                ClipOval(
                                  child: Image(
                                    width: 60.0,
                                    height: 60.0,
                                    image: AssetImage(
                                      'assets/me.jpg',
                                    ),
                                  ),
                                ),
                                CircleAvatar(
                                  radius: 7.0,
                                  backgroundColor: Colors.greenAccent,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              '  Fadi Wertatani',
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Container(
                        width: 60.0,
                        child: Column(
                          children: [
                            Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: [
                                ClipOval(
                                  child: Image(
                                    width: 60.0,
                                    height: 60.0,
                                    image: AssetImage(
                                      'assets/me.jpg',
                                    ),
                                  ),
                                ),
                                CircleAvatar(
                                  radius: 7.0,
                                  backgroundColor: Colors.greenAccent,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              '  Fadi Wertatani',
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Container(
                        width: 60.0,
                        child: Column(
                          children: [
                            Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: [
                                ClipOval(
                                  child: Image(
                                    width: 60.0,
                                    height: 60.0,
                                    image: AssetImage(
                                      'assets/me.jpg',
                                    ),
                                  ),
                                ),
                                CircleAvatar(
                                  radius: 7.0,
                                  backgroundColor: Colors.greenAccent,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              '  Fadi Wertatani',
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Container(
                        width: 60.0,
                        child: Column(
                          children: [
                            Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: [
                                ClipOval(
                                  child: Image(
                                    width: 60.0,
                                    height: 60.0,
                                    image: AssetImage(
                                      'assets/me.jpg',
                                    ),
                                  ),
                                ),
                                CircleAvatar(
                                  radius: 7.0,
                                  backgroundColor: Colors.greenAccent,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              '  Fadi Wertatani',
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Container(
                        width: 60.0,
                        child: Column(
                          children: [
                            Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: [
                                ClipOval(
                                  child: Image(
                                    width: 60.0,
                                    height: 60.0,
                                    image: AssetImage(
                                      'assets/me.jpg',
                                    ),
                                  ),
                                ),
                                CircleAvatar(
                                  radius: 7.0,
                                  backgroundColor: Colors.greenAccent,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              '  Fadi Wertatani',
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Container(
                        width: 60.0,
                        child: Column(
                          children: [
                            Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: [
                                ClipOval(
                                  child: Image(
                                    width: 60.0,
                                    height: 60.0,
                                    image: AssetImage(
                                      'assets/me.jpg',
                                    ),
                                  ),
                                ),
                                CircleAvatar(
                                  radius: 7.0,
                                  backgroundColor: Colors.greenAccent,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              '  Fadi Wertatani',
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipOval(
                    child: Image(
                      width: 60.0,
                      height: 60.0,
                      image: AssetImage(
                        'assets/me.jpg',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Fadi Wertatani',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: [
                            Text(
                              'Hello my name is Fadi wertatani',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20.0,
                              ),
                              child: Text(
                                '. 17:39',
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipOval(
                    child: Image(
                      width: 60.0,
                      height: 60.0,
                      image: AssetImage(
                        'assets/me.jpg',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Fadi Wertatani',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: [
                            Text(
                              'Hello my name is Fadi wertatani',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20.0,
                              ),
                              child: Text(
                                '. 17:39',
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipOval(
                    child: Image(
                      width: 60.0,
                      height: 60.0,
                      image: AssetImage(
                        'assets/me.jpg',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Fadi Wertatani',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: [
                            Text(
                              'Hello my name is Fadi wertatani',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20.0,
                              ),
                              child: Text(
                                '. 17:39',
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipOval(
                    child: Image(
                      width: 60.0,
                      height: 60.0,
                      image: AssetImage(
                        'assets/me.jpg',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Fadi Wertatani',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: [
                            Text(
                              'Hello my name is Fadi wertatani',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20.0,
                              ),
                              child: Text(
                                '. 17:39',
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipOval(
                    child: Image(
                      width: 60.0,
                      height: 60.0,
                      image: AssetImage(
                        'assets/me.jpg',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Fadi Wertatani',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: [
                            Text(
                              'Hello my name is Fadi wertatani',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20.0,
                              ),
                              child: Text(
                                '. 17:39',
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipOval(
                    child: Image(
                      width: 60.0,
                      height: 60.0,
                      image: AssetImage(
                        'assets/me.jpg',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Fadi Wertatani',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: [
                            Text(
                              'Hello my name is Fadi wertatani',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20.0,
                              ),
                              child: Text(
                                '. 17:39',
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipOval(
                    child: Image(
                      width: 60.0,
                      height: 60.0,
                      image: AssetImage(
                        'assets/me.jpg',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Fadi Wertatani',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: [
                            Text(
                              'Hello my name is Fadi wertatani',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20.0,
                              ),
                              child: Text(
                                '. 17:39',
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipOval(
                    child: Image(
                      width: 60.0,
                      height: 60.0,
                      image: AssetImage(
                        'assets/me.jpg',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Fadi Wertatani',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: [
                            Text(
                              'Hello my name is Fadi wertatani',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20.0,
                              ),
                              child: Text(
                                '. 17:39',
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipOval(
                    child: Image(
                      width: 60.0,
                      height: 60.0,
                      image: AssetImage(
                        'assets/me.jpg',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Fadi Wertatani',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: [
                            Text(
                              'Hello my name is Fadi wertatani',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20.0,
                              ),
                              child: Text(
                                '. 17:39',
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipOval(
                    child: Image(
                      width: 60.0,
                      height: 60.0,
                      image: AssetImage(
                        'assets/me.jpg',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Fadi Wertatani',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: [
                            Text(
                              'Hello my name is Fadi wertatani',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20.0,
                              ),
                              child: Text(
                                '. 17:39',
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipOval(
                    child: Image(
                      width: 60.0,
                      height: 60.0,
                      image: AssetImage(
                        'assets/me.jpg',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Fadi Wertatani',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: [
                            Text(
                              'Hello my name is Fadi wertatani',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20.0,
                              ),
                              child: Text(
                                '. 17:39',
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipOval(
                    child: Image(
                      width: 60.0,
                      height: 60.0,
                      image: AssetImage(
                        'assets/me.jpg',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Fadi Wertatani',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: [
                            Text(
                              'Hello my name is Fadi wertatani',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20.0,
                              ),
                              child: Text(
                                '. 17:39',
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipOval(
                    child: Image(
                      width: 60.0,
                      height: 60.0,
                      image: AssetImage(
                        'assets/me.jpg',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Fadi Wertatani',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: [
                            Text(
                              'Hello my name is Fadi wertatani',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20.0,
                              ),
                              child: Text(
                                '. 17:39',
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipOval(
                    child: Image(
                      width: 60.0,
                      height: 60.0,
                      image: AssetImage(
                        'assets/me.jpg',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Fadi Wertatani',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: [
                            Text(
                              'Hello my name is Fadi wertatani',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20.0,
                              ),
                              child: Text(
                                '. 17:39',
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipOval(
                    child: Image(
                      width: 60.0,
                      height: 60.0,
                      image: AssetImage(
                        'assets/me.jpg',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Fadi Wertatani',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: [
                            Text(
                              'Hello my name is Fadi wertatani',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20.0,
                              ),
                              child: Text(
                                '. 17:39',
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  //1. Build item
  //2. Build list
  //3. Add item to list

  //Chat icon
  Widget buildChatItem() => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipOval(
            child: Image(
              width: 60.0,
              height: 60.0,
              image: AssetImage(
                'assets/me.jpg',
              ),
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Fadi Wertatani',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Text(
                      'Hello my name is Fadi wertatani',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                      ),
                      child: Text(
                        '. 17:39',
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );

  //connected people icon
  Widget buildStoryItem() => Container(
        width: 60.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipOval(
              child: MaterialButton(
                onPressed: () {},
                height: 60.0,
                minWidth: 60.0,
                color: Colors.grey[200],
                child: Icon(
                  Icons.video_call_rounded,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Create cidéo call',
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      );
}
