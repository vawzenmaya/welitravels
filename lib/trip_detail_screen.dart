import 'package:flutter/material.dart';

class TripDetailScreen extends StatefulWidget {
  final String image;
  final String title;
  final String description;
  final String date;
  final String duration;
  final String price;
  final double rating;

  const TripDetailScreen({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
    required this.date,
    required this.duration,
    required this.price,
    required this.rating,
  }) : super(key: key);

  @override
  _TripDetailScreenState createState() => _TripDetailScreenState();
}

class _TripDetailScreenState extends State<TripDetailScreen> {
  bool showReviews = false;

  void toggleReviews() {
    setState(() {
      showReviews = !showReviews;
    });
  }

  void _showReviewModal() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
            top: 20,
            left: 20,
            right: 20,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Add Rating",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.purple),
                  ),
                  IconButton(
                    icon: Icon(Icons.close, color: Colors.red),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text("Rate this Journey", style: TextStyle(fontSize: 18)),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(5, (index) {
                  return IconButton(
                    icon: Icon(
                      Icons.star_border,
                      color: Colors.orange,
                      size: 30,
                    ),
                    onPressed: () {
                      // Set rating logic here
                    },
                  );
                }),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  hintText: "Describe your experience",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  contentPadding: EdgeInsets.all(15),
                ),
                maxLines: 4,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Submit review logic
                },
                style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  "Submit Review",
                  style: TextStyle(fontSize: 18, color: Colors.purple),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            // Top Image with Title Overlay
            Container(
              height: MediaQuery.of(context).size.height / 2.25,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.image),
                  fit: BoxFit.cover,
                ),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(70),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 50,
                    left: 5,
                    child: GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(
                        Icons.arrow_back,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 50,
                    right: 15,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.white38,
                        borderRadius: BorderRadius.circular(200),
                      ),
                      child: const Icon(
                        Icons.bookmark,
                        size: 30,
                        color: Color.fromARGB(255, 250, 203, 18),
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height / 2.5 - 20,
                    left: 20,
                    child: Text(
                      widget.title,
                      style: const TextStyle(
                        fontSize: 25,
                        color: Color.fromARGB(255, 187, 7, 223),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 2.25,
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height / 2.25,
                width: MediaQuery.of(context).size.width,
                child: RotatedBox(
                  quarterTurns: 2,
                  child: Image.asset(
                    widget.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            // Review or Description Section
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height / 1.8,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 254, 247, 255),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(70),
                  ),
                ),
                child: showReviews
                    ? buildReviewsSection()
                    : buildDescriptionSection(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildReviewsSection() {
    int rating = 4;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(Icons.star, color: Color.fromARGB(255, 250, 203, 18), size: 30),
                  const SizedBox(width: 5),
                  Text(
                    widget.rating.toString(),
                    style: const TextStyle(fontSize: 20, color: Color(0xFFB07C97)),
                  ),
                  const Text(
                    "  (512 reviews)",
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                ],
              ),
              TextButton(
                onPressed: toggleReviews,
                child: const Text(
                  "Hide Reviews",
                  style: TextStyle(fontSize: 18, color: Colors.purple),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 234, 233, 233),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/maguy.jpg"),
                  ),
                  title: const Text("Mansor"),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Thank you very much Weli Travels."),
                      Row(
                        children: List.generate(
                          5,
                          (starIndex) => Icon(
                            Icons.star,
                            color: starIndex < rating ? Colors.amber : Colors.grey[300],
                            size: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  trailing: const Text(
                    "2 days ago",
                    style: TextStyle(color: Colors.purple),
                  ),
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: ElevatedButton(
            onPressed: _showReviewModal,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const Text(
              "Add a review",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.purple),
            ),
          ),
        ),
      ],
    );
  }
  Widget buildDescriptionSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(Icons.star, color: Color.fromARGB(255, 250, 203, 18), size: 30),
                  const SizedBox(width: 5),
                  Text(
                    widget.rating.toString(),
                    style: const TextStyle(fontSize: 20, color: Color(0xFFB07C97)),
                  ),
                  const Text(
                    "  (546 reviews)",
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                ],
              ),
              TextButton(
                onPressed: toggleReviews,
                child: const Text(
                  "View Reviews",
                  style: TextStyle(fontSize: 18, color: Colors.purple),
                ),
              ),
            ],
          ),
          const SizedBox(height: 25),
          const Text(
            "Description",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          // Wrap the description in a SingleChildScrollView to make it scrollable
          Expanded(
            child: SingleChildScrollView(
              child: 
              Text(
                widget.description,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const SizedBox(height: 25),
          // Text(
          //   "Duration: ${widget.duration} days",
          //   style: const TextStyle(fontSize: 20, color: Colors.grey),
          // ),
          // const Spacer(),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      widget.price,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    // Booking functionality
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    backgroundColor: const Color.fromARGB(255, 215, 204, 209),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Text(
                    "Book Now",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.purple),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
