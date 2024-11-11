import 'package:flutter/material.dart';
import 'hotel_detail_screen.dart'; // Import the hotel_detail_screen.dart

class Hotels extends StatelessWidget {
  const Hotels({Key? key}) : super(key: key);

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
        title: const Text('Hotels', style: TextStyle(color: Colors.white),),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 0.8,
        children: [
          _buildHotelCard(
            context,
            'Pullman Zamzam',
            'Madina',
            'assets/images/Hot1.jpg',
            200,
            5,
            discount: true,
          ),
          _buildHotelCard(
            context,
            'Fairmont Hotel',
            'Makkah',
            'assets/images/Hot2.jpg',
            250,
            5,
          ),
          _buildHotelCard(
            context,
            'Rahf Al',
            'Aziziah',
            'assets/images/Hot3.jpg',
            180,
            4,
          ),
          _buildHotelCard(
            context,
            'Fairmont Hotel',
            'Makkah',
            'assets/images/Hot4.jpg',
            220,
            5,
            discount: true,
          ),
          _buildHotelCard(
            context,
            'Fairmont Hotel',
            'Makkah',
            'assets/images/Hot5.jpg',
            210,
            5,
          ),
          _buildHotelCard(
            context,
            'Anjum Hotel',
            'Makkah',
            'assets/images/Hot6.jpg',
            190,
            4,
          ),
        ],
      ),
    );
  }

  Widget _buildHotelCard(
    BuildContext context,
    String title,
    String location,
    String imagePath,
    int price,
    int rating, {
    bool discount = false,
  }) {
    return GestureDetector(
      onTap: () {
        // Navigate to HotelDetail screen on tap
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HotelDetail(
              title: title,
              location: location,
              imagePath: imagePath,
              price: price,
              rating: rating,
              discount: discount,
            ),
          ),
        );
      },
      child: Card(
        margin: const EdgeInsets.all(8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Stack(
            children: [
              Image.asset(
                imagePath,
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              if (discount)
                Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      '10% OFF',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ),
              Positioned(
                top: 10,
                right: 10,
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(0.6),
                        Colors.transparent,
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on,
                            color: Colors.white,
                            size: 14,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            location,
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: List.generate(
                          5,
                          (index) => Icon(
                            Icons.star,
                            color: index < rating ? Colors.amber : Colors.grey[300],
                            size: 16,
                          ),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '\$$price',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
