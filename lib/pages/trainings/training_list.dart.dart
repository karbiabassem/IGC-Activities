import 'package:flutter/material.dart';

import '../../classes/training_class.dart';

import './training_detail.dart';

class AllTrainings extends StatelessWidget {
  List<Training> trainings = [
    new Training(
        "Face recognition",
        "Mr.Wael Ben Taleb",
        "it's a trainig of face recognition",
        "09/02/2019",
        "ISSAT",
        Image.asset('images/faceRecognition.jpg')),
    new Training("Learn Flutter", "Mr.Bassem Karbia", "learn flutter",
        "16/02/2019", "ISSAT", Image.asset('images/flutter.png')),
    new Training("Node.js", "Mr.Bourawi", "learn node", "23/02/2019", "ISSAT",
        Image.asset('images/node.png')),
    new Training("Web 1", "Mr.Ala Sridi", "learn html,css,js", "03/03/2019",
        "ISSAT", Image.asset('images/hcj.png')),
    new Training("Android", "Mme.Mariem Dammek", "learn Android", "07/04/2019",
        "ISSAT", Image.asset('images/android.jpg')),
    new Training("Security", "Mr.Wael ben Tleb", "learn security", "14/04/2019",
        "ISSAT", Image.asset('images/security.jpg')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trainings IGC'),
      ),
      body: ListView.builder(
        itemCount: trainings.length,
        itemBuilder: (context, index) {
          return TrainingItem(trainings[index]);
        },
      ),
    );
  }
}

class TrainingItem extends StatelessWidget {
  Training training;
  TrainingItem(this.training);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: Card(
        child: InkWell(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailTraining(training))),
          highlightColor: Colors.blueAccent[100],
          splashColor: Colors.blue[900],
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: 150.0,
                  child: Hero(
                    tag: training.title,
                    child: training.image,
                  ),
                ),
                Center(
                    child: Text(
                  training.title,
                  textAlign: TextAlign.center,
                  //style: Theme.of(context).textTheme.headline,
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
