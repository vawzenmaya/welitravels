import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:welitravels/edit_profile_screen.dart';
import 'package:welitravels/gallery_screen.dart';
import 'package:welitravels/hotels_screen.dart';
import 'package:welitravels/settings_screen.dart';
import 'package:welitravels/trips_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isFlightSelected = false;
  bool _isExploreSelected = false;
  bool _isCitySelected = false;
  bool _isHotelSelected = false;
  bool _isPilgrimageSelected = false;

  final List<String> imgList = [
    'assets/gallery/IMG10.jpg',
    'assets/gallery/IMG2.jpg',
    'assets/gallery/IMG3.jpg',
    'assets/gallery/IMG4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFAB47BC),
                Color(0xFF4A148C),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        title: const Text(
          'Hi, Yahya',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_active_outlined,
              color: Colors.white,
            ),
          ),
        ],
      ),
      drawer: _buildDrawer(context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildCarousel(),
            const SizedBox(height: 20),
            _buildHeroSection(),
            const SizedBox(height: 20),
            _buildCategoriesSection(),
            const SizedBox(height: 20),
            _buildDealsSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawer(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Drawer(
      backgroundColor: isDarkMode ? Colors.grey[900] : Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/gallery/IMG23.jpg'),
                      fit: BoxFit.cover,
                    ),
                    color: isDarkMode ? Colors.black : Colors.purple,
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/images/maguy.jpg'),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'Yahya',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.dashboard,
                      color: isDarkMode ? Colors.white : Colors.purple),
                  title: Text(
                    'Dashboard',
                    style: TextStyle(
                        color: isDarkMode ? Colors.white : Colors.purple),
                  ),
                  onTap: () {
                    // Navigator.pop(context);
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => const DashboardScreen()),
                    // );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.chat,
                      color: isDarkMode ? Colors.white : Colors.purple),
                  title: Text(
                    'Chat with Us',
                    style: TextStyle(
                        color: isDarkMode ? Colors.white : Colors.purple),
                  ),
                  onTap: () {
                    // Navigator.pop(context);
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => const ChatPage()),
                    // );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.person_3_outlined,
                      color: isDarkMode ? Colors.white : Colors.purple),
                  title: Text(
                    'Edit Profile',
                    style: TextStyle(
                        color: isDarkMode ? Colors.white : Colors.purple),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const EditProfileScreen()),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings,
                      color: isDarkMode ? Colors.white : Colors.purple),
                  title: Text(
                    'Settings',
                    style: TextStyle(
                        color: isDarkMode ? Colors.white : Colors.purple),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SettingsScreen()),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.privacy_tip_outlined,
                      color: isDarkMode ? Colors.white : Colors.purple),
                  title: Text(
                    'Privacy',
                    style: TextStyle(
                        color: isDarkMode ? Colors.white : Colors.purple),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '© Develop With Effect',
              style: TextStyle(
                color: isDarkMode ? Colors.grey[400] : Colors.grey[600],
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCarousel() {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        enlargeCenterPage: true,
        height: 200.0,
        viewportFraction: 0.85,
        onPageChanged: (index, reason) {
          setState(() {});
        },
      ),
      items: imgList.map((item) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            item,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
        );
      }).toList(),
    );
  }

  Widget _buildHeroSection() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 0, bottom: 0),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xFFAB47BC),
              Color(0xFF4A148C),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Connecting Dreams',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              ),
              onPressed: () {},
              child: const Text(
                'Plan Your Next Trip',
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF4A148C),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoriesSection() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 0, bottom: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Popular Categories',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildCategoryItem(
                icon: Icons.flight_takeoff,
                label: 'Trips',
                isSelected: _isFlightSelected,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const TripPage()),
                  );
                  setState(() {
                    _isFlightSelected = !_isFlightSelected;
                  });
                },
              ),
              _buildCategoryItem(
                icon: Icons.burst_mode_outlined,
                label: 'Gallery',
                isSelected: _isExploreSelected,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const GalleryScreen()),
                  );
                  setState(() {
                    _isExploreSelected = !_isExploreSelected;
                  });
                },
              ),
              _buildCategoryItem(
                icon: Icons.volunteer_activism,
                label: 'Donate',
                isSelected: _isCitySelected,
                onPressed: () {
                  setState(() {
                    _isCitySelected = !_isCitySelected;
                  });
                },
              ),
              _buildCategoryItem(
                icon: Icons.local_hotel,
                label: 'Hotels',
                isSelected: _isHotelSelected,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Hotels()),
                  );
                  setState(() {
                    _isCitySelected = !_isCitySelected;
                  });
                },
              ),
              _buildCategoryItem(
                icon: Icons.public_sharp,
                label: 'Website',
                isSelected: _isPilgrimageSelected,
                onPressed: () async {
                  const url = 'https://www.welitravel.com/';
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                  setState(() {
                    _isPilgrimageSelected = !_isPilgrimageSelected;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryItem({
    required IconData icon,
    required String label,
    required bool isSelected,
    required VoidCallback onPressed,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: isSelected ? Color(0xFF4A148C) : Color(0xFFAB47BC),
            child: Icon(
              icon,
              size: 30,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Text(label, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }

  Widget _buildDealsSection() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 0, bottom: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Deals of the Month',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          _buildDealItem(
            'assets/gallery/IMG23.jpg',
            'Umrah Trip',
            '50% off',
          ),
        ],
      ),
    );
  }

  Widget _buildDealItem(String imageUrl, String title, String offer) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Stack(
          children: [
            Image.asset(
              imageUrl,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 20,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    offer,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
