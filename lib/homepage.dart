import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_kanya/detail_page.dart';
import 'package:instagram_kanya/followers_page.dart';
import 'package:instagram_kanya/widget/widgets.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width / 3;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "audiyy3",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 0,
        landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
        backgroundColor: Colors.white,
        iconSize: 30,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Align(
              alignment: Alignment.bottomCenter,
              child: Icon(
                Icons.home_outlined,
                color: Colors.black,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search_outlined,
              color: Colors.black,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.movie_creation_outlined,
              color: Colors.black,
            ),
            label: 'Reels',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border_outlined,
              color: Colors.black,
            ),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            label: 'Profile',
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const CircularProfile(
                      outline: 100,
                      size: 90,
                      image: 'images/profile.jpeg',
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Followers(),
                            ),
                          ),
                          child: Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '9',
                                    style: GoogleFonts.poppins(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Text(
                                    'Posts',
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '12k',
                                    style: GoogleFonts.poppins(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Text(
                                    'Followers',
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '1210',
                                    style: GoogleFonts.poppins(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Text(
                                    'Following',
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "kanya audy",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "tugas_image_text-input",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 40,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.grid_on,
                  size: 33,
                ),
                Icon(
                  Icons.live_tv_rounded,
                  size: 35,
                  color: Colors.grey.shade400,
                ),
                Icon(
                  Icons.assignment_ind_outlined,
                  size: 35,
                  color: Colors.grey.shade400,
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 2,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DetailPage()),
              );
            },
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: size,
                      width: size,
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        border: Border.all(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                      child: Image.asset(
                        'images/3.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: size,
                      width: size,
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        border: Border.all(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                      child: Image.asset(
                        'images/2.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: size,
                      width: size,
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        border: Border.all(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                      child: Image.asset(
                        'images/9.jpeg',
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: size,
                      width: size,
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        border: Border.all(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                      child: Image.asset(
                        'images/1.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: size,
                      width: size,
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        border: Border.all(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                      child: Image.asset(
                        'images/7.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: size,
                      width: size,
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        border: Border.all(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                      child: Image.asset(
                        'images/6.jpeg',
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: size,
                      width: size,
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        border: Border.all(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                      child: Image.asset(
                        'images/8.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: size,
                      width: size,
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        border: Border.all(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                      child: Image.asset(
                        'images/5.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: size,
                      width: size,
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        border: Border.all(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                      child: Image.asset(
                        'images/4.jpeg',
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
