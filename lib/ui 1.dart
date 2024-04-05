import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class screen extends StatefulWidget {
  const screen({
    super.key,
  });

  @override
  State<screen> createState() => _screenState();
}

class _screenState extends State<screen> {
  List sliders = [
    'assets/technews.png',
    'assets/n.jpeg',
    'assets/csk.jpg',
    'assets/iphone.png',
    'assets/b.jpeg',
    'assets/w.jpg',
  ];

  List riders = [
    'assets/w.jpg',
    'assets/wor.png',
    'assets/fo.jpeg',
    'assets/os.jpeg',
    'assets/csk.jpg',
    'assets/ele.jpeg',
  ];

  List ghi = [
    'All',
    'Technology',
    'Sports',
    'Business',
    'health',
    'Politics',
    'Automobile',
  ];



  List image = [];

  int select = 0;

  void press(int index) {
    setState(() {
      select = index;
    });
  }

  int btnselect = 0;

  void btnpress(int index) {
    setState(() {
      btnselect = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
          color: Colors.black,
        ),
        title: Text(
          'CATCHY',
          style: TextStyle(
              color: Colors.lightBlue.shade200,
              fontWeight: FontWeight.w500,
              fontSize: 25),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notification_add),
            color: Colors.black,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                child: TextFormField(
                  cursorColor: Colors.lightBlueAccent,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Search',
                      hintStyle: const TextStyle(color: Colors.white54),
                      suffixIcon: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Icon(
                          Icons.search,
                          color: Colors.lightBlueAccent,
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
            ),
            Stack(children: [
              SizedBox(
                height: 250,
                width: double.infinity,
                child: CarouselSlider.builder(
                  options: CarouselOptions(
                    scrollDirection: Axis.horizontal,
                    autoPlayAnimationDuration: const Duration(milliseconds: 800),
                    autoPlay: true,
                    enableInfiniteScroll: true,
                    aspectRatio: 2.0,
                    viewportFraction: .8,
                  ),
                  itemCount: sliders.length,
                  itemBuilder:
                      (BuildContext context, int index, int pageViewIndex) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage(sliders[index]),
                              fit: BoxFit.fill),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ]),
            SizedBox(
              height: 50,
              child: ListView.builder(
                  itemCount: 7,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: btnselect == index
                              ? Colors.blue
                              : Colors.transparent,
                        ),
                        onPressed: () {
                          btnpress(index);
                        },
                        child: Text(
                          ghi[index],
                          style: TextStyle(
                              color: btnselect == index
                                  ? Colors.black
                                  : Colors.blue),
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 500,
              child: ListView.builder(
                  itemCount: lis.length,
                  itemBuilder: (BuildContext con, index) {
                    return ListTile(
                      trailing: const Icon(Icons.bookmark),
                      title: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: AssetImage(lis[index].image),
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(lis[index].text,maxLines: 3,),
                            ),
                          ),

                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}


class Model{
  String? image;
  String? text;

  Model(this.image,this.text);
}

List lis = data.map((e) => Model(e["image"], e["text"])).toList();

var data = [
  {"image":"assets/w.jpg","text":  'Choosing the suitable machine for your cardio workout may seem overwhelming but here is an easy and comprehensive guide to start your journey to a stronger heart. But as always, take a heart stress test and get yourself cleared for any routine that you might want to take up, says functional medicine expert Vijay Thakkar',},
  {"image":"assets/wor.png","text":  'Israel said Friday it was targeting a "Hamas gunman" when it killed in Gaza seven aid workers whose deaths caused an international outcry, with its military admitting a series of "grave mistakes" and violations of its own rules of engagement.',},
  {"image":"assets/fo.jpeg","text":  'The Sky Sports football writers analyse Thursdays PL matches as Chelsea edged the wildest game ever against Man Utd while Liverpool overcame a Sheffield United scare.',},
  {"image":"assets/os.jpeg","text":  'Aside from Oppenheimer, Thomas has also worked on a string of other Nolan films including Tenet, Dunkirk, Interstellar, The Dark Knight, The Prestige, Batman Begins, Insomnia and Memento.',},
  {"image":"assets/csk.jpg","text":  'Chennai Super Kings’ MS Dhoni gave enough indications that he can still be explosive with the bat after his knock of 37 runs off 16 balls in the last match against Delhi Capitals.',},
  {"image":"assets/ele.jpeg","text":    'This is a tragic and we extend our deepest condolences to the family of the guest who died," Mr Vincent said. "We are also, naturally, supporting those guests and the guide involved in this distressing incident.',},


];

List jkl = [
];