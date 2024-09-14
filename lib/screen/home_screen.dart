
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  get navigationBar => navigationBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('বিসিএস প্রস্তুতি'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            ExamCard(),
            SizedBox(height: 10),
            CardScreen(),
            SizedBox(height: 10,),
            practics(),
            SizedBox(height: 10),
            CourseCategories(),
            SizedBox(height: 20),
            PracticeSection(),
            SizedBox(height: 10,),
          ],
        ),

      ),

    );
  }
}



class ExamCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var size;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'লাইভ এক্সাম',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 20,),
                  TextButton(
                    onPressed: () {  },
                    child: Text(
                      'সম্মিলিত রুটিন/ আর্কাইড',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ]
            ),
          ]
      ),
    );
  }
}
class CardScreen extends StatelessWidget {
  final List<Map<String, String>> items = [
    {
      'title': 'বিসিএস প্রস্তুতি | ৬ মাস',
      'subtitle': 'বাংলাদেশ বিষয়াবলী - 06',
      'info': 'প্রশ্ন 20 টি - 7 মিনিট',
      'status': 'Finished',
      'participants': '253 Already participated',
    },
    // Add more items here if needed
  ];
  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 200.0,
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 16/9,
              viewportFraction: 0.9,
            ),
            items: items.map((item) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0),
                            ),
                          ),
                          child: Text(
                            item['title']!,
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item['subtitle']!,
                                style: TextStyle(color: Colors.white, fontSize: 18),
                              ),
                              SizedBox(height: 4.0),
                              Text(
                                item['info']!,
                                style: TextStyle(color: Colors.grey, fontSize: 14),
                              ),
                              SizedBox(height: 8.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.radio_button_checked, color: Colors.red, size: 16),
                                      SizedBox(width: 4.0),
                                      Text(
                                        item['status']!,
                                        style: TextStyle(color: Colors.red, fontSize: 14),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    item['participants']!,
                                    style: TextStyle(color: Colors.white, fontSize: 14),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ],
      );
  }
}
class practics extends StatelessWidget {
  const practics({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'কোর্স কেটাগরি ',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 20,),
          TextButton(
            onPressed: () {  },
            child: Text(
              'সকল কোর্স',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ]
    );
  }
}


class CourseCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          CourseCategoryCard('বিসিএস', '47+ নতুন ব্যাচ'),
          CourseCategoryCard('ব্যাংক', 'Bank New Course'),
          CourseCategoryCard('প্রাইমারি', ''),
          CourseCategoryCard('জব সল্যুশন', ''),
          CourseCategoryCard('শিক্ষক নিয়োগ (NTRCA)', ''),
          CourseCategoryCard('PSC & Others', ''),
        ],
      ),
    );
  }
}

class CourseCategoryCard extends StatelessWidget {
  final String title;
  final String subtitle;

  CourseCategoryCard(this.title, this.subtitle);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            if (subtitle.isNotEmpty) ...[
              SizedBox(height: 4),
              Text(
                subtitle,
                style: TextStyle(color: Colors.red, fontSize: 12),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class PracticeSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('আপনার কোন প্যাকেজ এ্যক্টিভ নেই।'),
              TextButton(
                onPressed: () {},
                child: Text('আপগ্রেড'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}