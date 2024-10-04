import 'package:aplikasi_wisata/app/models/buttonkategori_model.dart';
import 'package:aplikasi_wisata/app/models/destination_model.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 249, 249, 249),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 249, 249, 249),
        toolbarHeight: 100,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hii you,',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black38,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Travelling Today?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/User_Image.jpg"),
            radius: 30,
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Search for places...',
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(20),
                        right: Radius.circular(20),
                      ),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(20),
                        right: Radius.circular(20),
                      ),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buttonKategori(
                        icon: Icon(Icons.beach_access),
                        label: Text('Beach'),
                        onPressed: () {},
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      buttonKategori(
                        icon: Icon(Icons.beach_access),
                        label: Text('Beach'),
                        onPressed: () {},
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      buttonKategori(
                        icon: Icon(Icons.beach_access),
                        label: Text('Beach'),
                        onPressed: () {},
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      buttonKategori(
                        icon: Icon(Icons.beach_access),
                        label: Text('Beach'),
                        onPressed: () {},
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular Destination",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    GestureDetector(
                      onTap: () {
                        //routing ke Popular destination
                      },
                      child: Text(
                        "See all",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () => Get.toNamed('/maps'),
                        child: DestinationCard(
                          imageAsset: "assets/images/pantai.jpeg",
                          placeName: 'Beautiful Beach',
                          location: 'Location A',
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      DestinationCard(
                        imageAsset: "assets/images/pantai.jpeg",
                        placeName: 'Mountain View',
                        location: 'Location B',
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      DestinationCard(
                        imageAsset: "assets/images/pantai.jpeg",
                        placeName: 'City Park',
                        location: 'Location C',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Nearby Me",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    GestureDetector(
                      onTap: () {
                        //routing ke Nearby Me
                      },
                      child: Text(
                        "See all",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: GNav(
            activeColor: const Color.fromARGB(255, 78, 172, 248),
            gap: 8,
            onTabChange: (index) {
              print(index);
            },
            padding: EdgeInsets.all(16),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: "Home",
              ),
              GButton(
                icon: Icons.favorite_border,
                text: "Likes",
              ),
              GButton(
                icon: Icons.search,
                text: "Search",
              ),
              GButton(
                icon: Icons.settings,
                text: "Settings",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
