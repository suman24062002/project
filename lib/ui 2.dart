import 'package:flutter/material.dart';
class hii extends StatefulWidget {
  const hii({super.key});

  @override
  State<hii> createState() => _hiiState();
}

class _hiiState extends State<hii> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_rounded),
        title: Text("Catchy Reading"),
        centerTitle: true,
        actions: [Icon(Icons.more_horiz)],
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              height: 220,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage("assets/w.jpg"),fit: BoxFit.cover
                )
              ),
            ),
          ),
          Expanded(
              flex: 0,
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Cardio workout: Which machines in the gym should you go for?',style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),),
          )),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                SizedBox(width: 5,),
                CircleAvatar(
                  backgroundColor: Colors.black,
                ),
                SizedBox(width: 5,),
                Text('Gym News',style: TextStyle(
                  color: Colors.black
                ),),
              ],
            ),
          ),
          Expanded(
            flex: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Choosing the suitable machine for your cardio workout may seem overwhelming but here is an easy and comprehensive guide to start your journey to a stronger heart. But as always, take a heart stress test and get yourself cleared for any routine that you might want to take up, says functional medicine expert Vijay Thakkar'),
            ),
          ),
          Row(
            children: [
              SizedBox(width: 5,),
              Container(
                  height: 100,
                  child: VerticalDivider(thickness: 3,color: Colors.blueAccent,indent: 10,endIndent: 10,)),
              Expanded(
                  child: Text('Circuit training and compound body movements like lateral pull downs, single bar, parallel bar-like lunges with dumbbells as well as a combination of exercises can increase the value of a workout. You can do all of this in one-third the time you devote to weight training and get an equal result, advises holistic fitness coach Dr Mickey Mehta',maxLines: 3,style: TextStyle(
                    color: Colors.blueAccent
                  ),),)
            ],
          ),
          Expanded(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Without enough support, the constant movements while working out can cause tissue damage, such as straining of Cooper’s ligaments, or the connective structures in charge of keeping the breasts in shape. Moreover, you could face musculoskeletal difficulties, says womens fitness expert Shwetambari Shetty'),
          )),
          Expanded(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Without enough support, the constant movements while working out can cause tissue damage, such as straining of Cooper’s ligaments, or the connective structures in charge of keeping the breasts in shape. Moreover, you could face musculoskeletal difficulties, says womens fitness expert Shwetambari Shetty'),
          )),









        ],
      ),
    );
  }
}
