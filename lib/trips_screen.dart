import 'package:flutter/material.dart';
import 'package:welitravels/trip_detail_screen.dart';

class TripPage extends StatelessWidget {
  const TripPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.45,
                      width: double.infinity,
                      child: Image.asset(
                        'assets/gallery/IMG6.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.45,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.black54,
                            Colors.transparent,
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 40,
                      left: 10,
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back, color: Colors.white),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    const Positioned(
                      bottom: 30,
                      left: 20,
                      child: Text(
                        'Choose Package',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                              blurRadius: 10.0,
                              color: Colors.black45,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                _buildFeaturedTripSection(),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'Available Trips',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.1,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                _buildAvailableTripsList(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAvailableTripsList(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          _buildHotPlaceCard(
            context,
            image: 'assets/gallery/IMG21.jpg',
            title: 'Hijj🕋',
            rating: 4.8,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TripDetailScreen(
                    image: 'assets/gallery/IMG21.jpg',
                    title: 'Hajj🕋',
                    description: '''Information for Hajj 2025 Pilgrims 🕋

Travel Dates:
23rd May – 13th June

Flight:
Emirates

Accommodation:
- Makkah: Swissotel Makkah Hotel (5-Star Hotel)
- Aziziah: Rahf Al Mashaer (4-Star Hotel)
- Madinah: Zam Zam Pullman Hotel (5-Star Hotel)

Mina:
A Class Tents

Arafat:
Private Tent (Fully Air Conditioned)

Transportation:
Private Buses

Lectures and Ceremonies:
- Two lectures on the weekends before travel.
- Official send-off ceremony in Uganda.
- Six practical sessions in Makkah, focusing on the practical aspects of Hajj.

Meals:
- Breakfast and dinner served in Madinah.
- Breakfast only in Makkah.
- All meals provided in Mina tents.
''',
                    date: 'December',
                    duration: '14',
                    price: '\$1650',
                    rating: 4.8,
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 16),
          _buildHotPlaceCard(
            context,
            image: 'assets/gallery/IMG5.jpg',
            title: 'Umrah🕋',
            rating: 4.5,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TripDetailScreen(
                    image: 'assets/gallery/IMG5.jpg',
                    title: 'Umrah🕋',
                    description: '''Important Information for the Early December Umrah Pilgrims 🕋
Travel Dates:
01st – 11th December

Flight:
Emirates

Accommodation:
- Makkah: Fairmont Hotel (5-Star Hotel)
- Madinah: Zam Zam Pullman Hotel (5-Star Hotel)

Transportation:
Private Buses

Lectures and Ceremonies:
- A send-off ceremony in Uganda before travel.
- A practical session in Madinah focusing on the rituals of Umrah.

Meals:
Breakfast and dinner are served in both Makkah and Madinah.
''',
                    date: 'November',
                    duration: '21',
                    price: '\$500',
                    rating: 4.5,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
Widget _buildHotPlaceCard(
  BuildContext context, {
  required String image,
  required String title,
  required double rating,
  required VoidCallback onTap,
  String location = '',
  int price = 0,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0), // Set border radius here
      ),
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
      clipBehavior: Clip.antiAlias, // Ensures child widgets are clipped
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0), // Set border radius for the image
                child: Image.asset(
                  image,
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                ),
              ),
              Positioned(
                bottom: 8,
                left: 8,
                right: 8,
                child: Container(
                  padding: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      if (location.isNotEmpty)
                        Text(
                          location,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.white70,
                          ),
                        ),
                      Row(
                        children: List.generate(
                          rating.toInt(),
                          (index) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 16,
                          ),
                        ),
                      ),
                      if (price > 0)
                        Text(
                          '\$$price per night',
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.white,
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
  );
}
Widget _buildFeaturedTripSection() {
  return Padding(
    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
    child: Container(
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
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 15,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            child: Image.asset(
              'assets/gallery/IMG4.jpg',
              height: 160,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Featured Trip: Umrah',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '\$1800 (7 days)',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10,
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Book Now',
                    style: TextStyle(
                      color: Color(0xFFAB47BC),
                      fontWeight: FontWeight.bold,
                    ),
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
