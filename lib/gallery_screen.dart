import 'package:flutter/material.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _GalleryScreenState createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {

  // Modify the _images list to track the liked state for each image.
  final List<Map<String, dynamic>> _images = [
    {
      'imagePath': 'assets/gallery/IMG17.jpg',
      'story': 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
      'posterName': 'John Doe',
      'posterImage': 'assets/images/maguy.jpg',
      'likes': 10,
      'liked': false,
      'comments': [
        {
          'comment': 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
          'commenterName': 'Alice',
          'commenterImage': 'assets/images/maguy.jpg',
          'time': '2 hours ago',
          'likes': 5,
          'replies': []
        },
        {
          'comment': 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
          'commenterName': 'Bob',
          'commenterImage': 'assets/images/maguy.jpg',
          'time': '3 hours ago',
          'likes': 3,
          'replies': []
        }
      ],
      'showComments': false,
      'time': '5 hours ago'
    },
    {
      'imagePath': 'assets/gallery/IMG23.jpg',
      'story': 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
      'posterName': 'John Doe',
      'posterImage': 'assets/images/maguy.jpg',
      'likes': 10,
      'liked': false,
      'comments': [
        {
          'comment': 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
          'commenterName': 'Alice',
          'commenterImage': 'assets/images/maguy.jpg',
          'time': '2 hours ago',
          'likes': 5,
          'replies': []
        },
        {
          'comment': 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
          'commenterName': 'Bob',
          'commenterImage': 'assets/images/maguy.jpg',
          'time': '3 hours ago',
          'likes': 3,
          'replies': []
        }
      ],
      'showComments': false,
      'time': '5 hours ago'
    },{
      'imagePath': 'assets/gallery/IMG1.jpg',
      'story': 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
      'posterName': 'John Doe',
      'posterImage': 'assets/images/maguy.jpg',
      'likes': 10,
      'liked': false,
      'comments': [
        {
          'comment': 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
          'commenterName': 'Alice',
          'commenterImage': 'assets/images/maguy.jpg',
          'time': '2 hours ago',
          'likes': 5,
          'replies': []
        },
        {
          'comment': 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
          'commenterName': 'Bob',
          'commenterImage': 'assets/images/maguy.jpg',
          'time': '3 hours ago',
          'likes': 3,
          'replies': []
        }
      ],
      'showComments': false,
      'time': '5 hours ago'
    },{
      'imagePath': 'assets/gallery/IMG5.jpg',
      'story': 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
      'posterName': 'John Doe',
      'posterImage': 'assets/images/maguy.jpg',
      'likes': 10,
      'liked': false,
      'comments': [
        {
          'comment': 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
          'commenterName': 'Alice',
          'commenterImage': 'assets/images/maguy.jpg',
          'time': '2 hours ago',
          'likes': 5,
          'replies': []
        },
        {
          'comment': 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
          'commenterName': 'Bob',
          'commenterImage': 'assets/images/maguy.jpg',
          'time': '3 hours ago',
          'likes': 3,
          'replies': []
        }
      ],
      'showComments': false,
      'time': '5 hours ago'
    },{
      'imagePath': 'assets/gallery/IMG2.jpg',
      'story': 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
      'posterName': 'John Doe',
      'posterImage': 'assets/images/maguy.jpg',
      'likes': 10,
      'liked': false,
      'comments': [
        {
          'comment': 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
          'commenterName': 'Alice',
          'commenterImage': 'assets/images/maguy.jpg',
          'time': '2 hours ago',
          'likes': 5,
          'replies': []
        },
        {
          'comment': 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
          'commenterName': 'Bob',
          'commenterImage': 'assets/images/maguy.jpg',
          'time': '3 hours ago',
          'likes': 3,
          'replies': []
        }
      ],
      'showComments': false,
      'time': '5 hours ago'
    },
    {
      'imagePath': 'assets/gallery/IMG6.jpg',
      'story': 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
      'posterName': 'John Doe',
      'posterImage': 'assets/images/maguy.jpg',
      'likes': 10,
      'liked': false,
      'comments': [
        {
          'comment': 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
          'commenterName': 'Alice',
          'commenterImage': 'assets/images/maguy.jpg',
          'time': '2 hours ago',
          'likes': 5,
          'replies': []
        },
        {
          'comment': 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
          'commenterName': 'Bob',
          'commenterImage': 'assets/images/maguy.jpg',
          'time': '3 hours ago',
          'likes': 3,
          'replies': []
        }
      ],
      'showComments': false,
      'time': '5 hours ago'
    },{
      'imagePath': 'assets/gallery/IMG16.jpg',
      'story': 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
      'posterName': 'John Doe',
      'posterImage': 'assets/images/maguy.jpg',
      'likes': 10,
      'liked': false,
      'comments': [
        {
          'comment': 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
          'commenterName': 'Alice',
          'commenterImage': 'assets/images/maguy.jpg',
          'time': '2 hours ago',
          'likes': 5,
          'replies': []
        },
        {
          'comment': 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
          'commenterName': 'Bob',
          'commenterImage': 'assets/images/maguy.jpg',
          'time': '3 hours ago',
          'likes': 3,
          'replies': []
        }
      ],
      'showComments': false,
      'time': '5 hours ago'
    },{
      'imagePath': 'assets/gallery/IMG15.jpg',
      'story': 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
      'posterName': 'John Doe',
      'posterImage': 'assets/images/maguy.jpg',
      'likes': 10,
      'liked': false,
      'comments': [
        {
          'comment': 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
          'commenterName': 'Alice',
          'commenterImage': 'assets/images/maguy.jpg',
          'time': '2 hours ago',
          'likes': 5,
          'replies': []
        },
        {
          'comment': 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
          'commenterName': 'Bob',
          'commenterImage': 'assets/images/maguy.jpg',
          'time': '3 hours ago',
          'likes': 3,
          'replies': []
        }
      ],
      'showComments': false,
      'time': '5 hours ago'
    },{
      'imagePath': 'assets/gallery/IMG14.jpg',
      'story': 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
      'posterName': 'John Doe',
      'posterImage': 'assets/images/maguy.jpg',
      'likes': 10,
      'liked': false,
      'comments': [
        {
          'comment': 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
          'commenterName': 'Alice',
          'commenterImage': 'assets/images/maguy.jpg',
          'time': '2 hours ago',
          'likes': 5,
          'replies': []
        },
        {
          'comment': 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
          'commenterName': 'Bob',
          'commenterImage': 'assets/images/maguy.jpg',
          'time': '3 hours ago',
          'likes': 3,
          'replies': []
        }
      ],
      'showComments': false,
      'time': '5 hours ago'
    },{
      'imagePath': 'assets/gallery/IMG13.jpg',
      'story': 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
      'posterName': 'John Doe',
      'posterImage': 'assets/images/maguy.jpg',
      'likes': 10,
      'liked': false,
      'comments': [
        {
          'comment': 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
          'commenterName': 'Alice',
          'commenterImage': 'assets/images/maguy.jpg',
          'time': '2 hours ago',
          'likes': 5,
          'replies': []
        },
        {
          'comment': 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
          'commenterName': 'Bob',
          'commenterImage': 'assets/images/maguy.jpg',
          'time': '3 hours ago',
          'likes': 3,
          'replies': []
        }
      ],
      'showComments': false,
      'time': '5 hours ago'
    },{
      'imagePath': 'assets/gallery/IMG12.jpg',
      'story': 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
      'posterName': 'John Doe',
      'posterImage': 'assets/images/maguy.jpg',
      'likes': 10,
      'liked': false,
      'comments': [
        {
          'comment': 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
          'commenterName': 'Alice',
          'commenterImage': 'assets/images/maguy.jpg',
          'time': '2 hours ago',
          'likes': 5,
          'replies': []
        },
        {
          'comment': 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
          'commenterName': 'Bob',
          'commenterImage': 'assets/images/maguy.jpg',
          'time': '3 hours ago',
          'likes': 3,
          'replies': []
        }
      ],
      'showComments': false,
      'time': '5 hours ago'
    },{
      'imagePath': 'assets/gallery/IMG11.jpg',
      'story': 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
      'posterName': 'John Doe',
      'posterImage': 'assets/images/maguy.jpg',
      'likes': 10,
      'liked': false,
      'comments': [
        {
          'comment': 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
          'commenterName': 'Alice',
          'commenterImage': 'assets/images/maguy.jpg',
          'time': '2 hours ago',
          'likes': 5,
          'replies': []
        },
        {
          'comment': 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
          'commenterName': 'Bob',
          'commenterImage': 'assets/images/maguy.jpg',
          'time': '3 hours ago',
          'likes': 3,
          'replies': []
        }
      ],
      'showComments': false,
      'time': '5 hours ago'
    },
    {
      'imagePath': 'assets/gallery/IMG7.jpg',
      'story': 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
      'posterName': 'John Doe',
      'posterImage': 'assets/images/maguy.jpg',
      'likes': 10,
      'liked': false,
      'comments': [
        {
          'comment': 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
          'commenterName': 'Alice',
          'commenterImage': 'assets/images/maguy.jpg',
          'time': '2 hours ago',
          'likes': 5,
          'replies': []
        },
        {
          'comment': 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
          'commenterName': 'Bob',
          'commenterImage': 'assets/images/maguy.jpg',
          'time': '3 hours ago',
          'likes': 3,
          'replies': []
        }
      ],
      'showComments': false,
      'time': '5 hours ago'
    },{
      'imagePath': 'assets/gallery/IMG8.jpg',
      'story': 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
      'posterName': 'John Doe',
      'posterImage': 'assets/images/maguy.jpg',
      'likes': 10,
      'liked': false,
      'comments': [
        {
          'comment': 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
          'commenterName': 'Alice',
          'commenterImage': 'assets/images/maguy.jpg',
          'time': '2 hours ago',
          'likes': 5,
          'replies': []
        },
        {
          'comment': 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
          'commenterName': 'Bob',
          'commenterImage': 'assets/images/maguy.jpg',
          'time': '3 hours ago',
          'likes': 3,
          'replies': []
        }
      ],
      'showComments': false,
      'time': '5 hours ago'
    },{
      'imagePath': 'assets/gallery/IMG9.jpg',
      'story': 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
      'posterName': 'John Doe',
      'posterImage': 'assets/images/maguy.jpg',
      'likes': 10,
      'liked': false,
      'comments': [
        {
          'comment': 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
          'commenterName': 'Alice',
          'commenterImage': 'assets/images/maguy.jpg',
          'time': '2 hours ago',
          'likes': 5,
          'replies': []
        },
        {
          'comment': 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
          'commenterName': 'Bob',
          'commenterImage': 'assets/images/maguy.jpg',
          'time': '3 hours ago',
          'likes': 3,
          'replies': []
        }
      ],
      'showComments': false,
      'time': '5 hours ago'
    },{
      'imagePath': 'assets/gallery/IMG10.jpg',
      'story': 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
      'posterName': 'John Doe',
      'posterImage': 'assets/images/maguy.jpg',
      'likes': 10,
      'liked': false,
      'comments': [
        {
          'comment': 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
          'commenterName': 'Alice',
          'commenterImage': 'assets/images/maguy.jpg',
          'time': '2 hours ago',
          'likes': 5,
          'replies': []
        },
        {
          'comment': 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
          'commenterName': 'Bob',
          'commenterImage': 'assets/images/maguy.jpg',
          'time': '3 hours ago',
          'likes': 3,
          'replies': []
        }
      ],
      'showComments': false,
      'time': '5 hours ago'
    },
    {
      'imagePath': 'assets/gallery/IMG22.jpg',
      'story': 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
      'posterName': 'John Doe',
      'posterImage': 'assets/images/maguy.jpg',
      'likes': 10,
      'liked': false,
      'comments': [
        {
          'comment': 'Amazing......',
          'commenterName': 'Alice',
          'commenterImage': 'assets/images/maguy.jpg',
          'time': '2 hours ago',
          'likes': 5,
          'replies': []
        },
        {
          'comment': 'So beautiful!',
          'commenterName': 'Bob',
          'commenterImage': 'assets/images/maguy.jpg',
          'time': '3 hours ago',
          'likes': 3,
          'replies': []
        }
      ],
      'showComments': false,
      'time': '5 hours ago'
    },
    {
      'imagePath': 'assets/gallery/IMG21.jpg',
      'story': 'We\'re going this month for Umrah.',
      'posterName': 'Jane Smith',
      'posterImage': 'assets/images/maguy.jpg',
      'likes': 20,
      'liked': false,
      'comments': [
        {
          'comment': 'Wish I was there!',
          'commenterName': 'Charlie',
          'commenterImage': 'assets/images/maguy.jpg',
          'time': '1 hour ago',
          'likes': 2,
          'replies': []
        },
        {
          'comment': 'I\'m going.',
          'commenterName': 'Dave',
          'commenterImage': 'assets/images/maguy.jpg',
          'time': '4 hours ago',
          'likes': 1,
          'replies': []
        }
      ],
      'showComments': false,
      'time': '8 hours ago'
    },
    {
      'imagePath': 'assets/gallery/IMG20.jpg',
      'story': 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
      'posterName': 'John Doe',
      'posterImage': 'assets/images/maguy.jpg',
      'likes': 10,
      'liked': false,
      'comments': [
        {
          'comment': 'Amazing......',
          'commenterName': 'Alice',
          'commenterImage': 'assets/images/maguy.jpg',
          'time': '2 hours ago',
          'likes': 5,
          'replies': []
        },
        {
          'comment': 'So beautiful!',
          'commenterName': 'Bob',
          'commenterImage': 'assets/images/maguy.jpg',
          'time': '3 hours ago',
          'likes': 3,
          'replies': []
        }
      ],
      'showComments': false,
      'time': '5 hours ago'
    },
    {
      'imagePath': 'assets/gallery/IMG19.jpg',
      'story': 'Men of Allah in Mecca.',
      'posterName': 'John Doe',
      'posterImage': 'assets/images/maguy.jpg',
      'likes': 10,
      'liked': false,
      'comments': [
        {
          'comment': 'Amazing......',
          'commenterName': 'Alice',
          'commenterImage': 'assets/images/maguy.jpg',
          'time': '2 hours ago',
          'likes': 5,
          'replies': []
        },
        {
          'comment': 'So beautiful!',
          'commenterName': 'Bob',
          'commenterImage': 'assets/images/maguy.jpg',
          'time': '3 hours ago',
          'likes': 3,
          'replies': []
        }
      ],
      'showComments': false,
      'time': '5 hours ago'
    },
  ];

  void _toggleLike(int index) {
    setState(() {
      _images[index]['likes'] += _images[index]['liked'] ? -1 : 1;
      _images[index]['liked'] = !_images[index]['liked'];
    });
  }

  void _toggleComments(int index) {
    setState(() {
      _images[index]['showComments'] = !_images[index]['showComments'];
    });
  }

  void _toggleCommentLike(int imageIndex, int commentIndex) {
    setState(() {
      _images[imageIndex]['comments'][commentIndex]['likes']++;
    });
  }

  void _showCommentDialog(BuildContext context, int index) {
    final TextEditingController _commentController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Add a Comment'),
          content: TextField(
            controller: _commentController,
            decoration: const InputDecoration(hintText: 'Enter your comment'),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _images[index]['comments'].add({
                    'comment': _commentController.text,
                    'commenterName': 'You',
                    'commenterImage': 'assets/images/maguy.jpg',
                    'time': 'Just now',
                    'likes': 0,
                    'replies': []
                  });
                });
                Navigator.of(context).pop();
              },
              child: const Text('Post'),
            ),
          ],
        );
      },
    );
  }

  void _showReplyDialog(BuildContext context, int imageIndex, int commentIndex) {
    final TextEditingController _replyController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Add a Reply'),
          content: TextField(
            controller: _replyController,
            decoration: const InputDecoration(hintText: 'Enter your reply'),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _images[imageIndex]['comments'][commentIndex]['replies'].add({
                    'reply': _replyController.text,
                    'replierName': 'You',
                    'replierImage': 'assets/images/maguy.jpg',
                    'time': 'Just now',
                    'likes': 0
                  });
                });
                Navigator.of(context).pop();
              },
              child: const Text('Post'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Make background transparent for gradient
        elevation: 0, // Remove app bar shadow for a clean look
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
        title: const Text('Gallery',
        style: TextStyle(
          color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
            ),
          ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: _images.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(_images[index]['posterImage']),
                    ),
                    title: Text(_images[index]['posterName']),
                    subtitle: Text('${_images[index]['story']} - ${_images[index]['time']}'),
                  ),
                  GestureDetector(
                    onTap: () => _toggleComments(index),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        _images[index]['imagePath'],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              child: IconButton(
                                icon: Icon(
                                  Icons.thumb_up,
                                  color: _images[index]['liked']
                                      ? const Color.fromARGB(255, 141, 29, 29)
                                      : Colors.grey,
                                ),
                                onPressed: () => _toggleLike(index),
                              ),
                            ),
                            Text('${_images[index]['likes']} likes'),
                          ],
                        ),
                        IconButton(
                          icon: const Icon(Icons.comment),
                          onPressed: () {
                            _showCommentDialog(context, index);
                          },
                        ),
                      ],
                    ),
                  ),
                  if (_images[index]['showComments'])
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: _images[index]['comments']
                            .map<Widget>((comment) => Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      ListTile(
                                        leading: CircleAvatar(
                                          backgroundImage: AssetImage(comment['commenterImage']),
                                        ),
                                        title: Text(comment['commenterName']),
                                        subtitle: Text(comment['comment']),
                                        trailing: Text(comment['time']),
                                      ),
                                      Row(
                                        children: [
                                          IconButton(
                                            icon: const Icon(Icons.thumb_up),
                                            onPressed: () => _toggleCommentLike(index, _images[index]['comments'].indexOf(comment)),
                                          ),
                                          Text('${comment['likes']} likes'),
                                          const SizedBox(width: 16),
                                          IconButton(
                                            icon: const Icon(Icons.reply),
                                            onPressed: () {
                                              _showReplyDialog(context, index, _images[index]['comments'].indexOf(comment));
                                            },
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ))
                            .toList(),
                      ),
                    ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
