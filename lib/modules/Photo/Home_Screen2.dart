import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Screen',
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
            ),
            onPressed: () {
              print('Search');
            },
          ),
        ],
        backgroundColor: Colors.teal,
        centerTitle: true,
        elevation: 100.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.only(
                          topStart: Radius.circular(20.0),
                          bottomEnd: Radius.circular(20.0),
                        ),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      width: 150.0,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Image(
                            height: 150.0,
                            width: 150.0,
                            image: AssetImage(
                              'assets/me.jpg',
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 10.0,
                            ),
                            width: double.infinity,
                            color: Colors.teal.withOpacity(.7),
                            child: Text(
                              'Fadi_1',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.only(
                          topEnd: Radius.circular(20.0),
                          bottomStart: Radius.circular(20.0),
                        ),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      width: 150.0,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Image(
                            height: 150.0,
                            width: 150.0,
                            image: AssetImage(
                              'assets/Fadi.jpg',
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 10.0,
                            ),
                            width: double.infinity,
                            color: Colors.teal.withOpacity(.7),
                            child: Text(
                              'Fadi_2',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.only(
                          topStart: Radius.circular(20.0),
                          bottomEnd: Radius.circular(20.0),
                        ),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      width: 150.0,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Image(
                            height: 150.0,
                            width: 150.0,
                            image: AssetImage(
                              'assets/Fadi.jpg',
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 10.0,
                            ),
                            width: double.infinity,
                            color: Colors.teal.withOpacity(.7),
                            child: Text(
                              'Fadi_2',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.only(
                          topEnd: Radius.circular(20.0),
                          bottomStart: Radius.circular(20.0),
                        ),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      width: 150.0,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Image(
                            height: 150.0,
                            width: 150.0,
                            image: AssetImage(
                              'assets/me.jpg',
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 10.0,
                            ),
                            width: double.infinity,
                            color: Colors.teal.withOpacity(.7),
                            child: Text(
                              'Fadi_1',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.only(
                          topStart: Radius.circular(20.0),
                          bottomEnd: Radius.circular(20.0),
                        ),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      width: 150.0,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Image(
                            height: 150.0,
                            width: 150.0,
                            image: AssetImage(
                              'assets/me.jpg',
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 10.0,
                            ),
                            width: double.infinity,
                            color: Colors.teal.withOpacity(.7),
                            child: Text(
                              'Fadi_1',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.only(
                          topEnd: Radius.circular(20.0),
                          bottomStart: Radius.circular(20.0),
                        ),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      width: 150.0,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Image(
                            height: 150.0,
                            width: 150.0,
                            image: AssetImage(
                              'assets/Fadi.jpg',
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 10.0,
                            ),
                            width: double.infinity,
                            color: Colors.teal.withOpacity(.7),
                            child: Text(
                              'Fadi_2',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.only(
                          topStart: Radius.circular(20.0),
                          bottomEnd: Radius.circular(20.0),
                        ),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      width: 150.0,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Image(
                            height: 150.0,
                            width: 150.0,
                            image: AssetImage(
                              'assets/Fadi.jpg',
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 10.0,
                            ),
                            width: double.infinity,
                            color: Colors.teal.withOpacity(.7),
                            child: Text(
                              'Fadi_2',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.only(
                          topEnd: Radius.circular(20.0),
                          bottomStart: Radius.circular(20.0),
                        ),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      width: 150.0,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Image(
                            height: 150.0,
                            width: 150.0,
                            image: AssetImage(
                              'assets/me.jpg',
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 10.0,
                            ),
                            width: double.infinity,
                            color: Colors.teal.withOpacity(.7),
                            child: Text(
                              'Fadi_1',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.only(
                          topStart: Radius.circular(20.0),
                          bottomEnd: Radius.circular(20.0),
                        ),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      width: 150.0,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Image(
                            height: 150.0,
                            width: 150.0,
                            image: AssetImage(
                              'assets/me.jpg',
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 10.0,
                            ),
                            width: double.infinity,
                            color: Colors.teal.withOpacity(.7),
                            child: Text(
                              'Fadi_1',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.only(
                          topEnd: Radius.circular(20.0),
                          bottomStart: Radius.circular(20.0),
                        ),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      width: 150.0,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Image(
                            height: 150.0,
                            width: 150.0,
                            image: AssetImage(
                              'assets/Fadi.jpg',
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 10.0,
                            ),
                            width: double.infinity,
                            color: Colors.teal.withOpacity(.7),
                            child: Text(
                              'Fadi_2',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
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
}
