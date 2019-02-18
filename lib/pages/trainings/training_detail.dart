import 'package:flutter/material.dart';
import '../../classes/training_class.dart';

class DetailTraining extends StatefulWidget {
  Training training;

  DetailTraining(this.training);

  @override
  State<StatefulWidget> createState() {
    return DetailTrainingState();
  }
}

class DetailTrainingState extends State<DetailTraining> {
  bool _isFav = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.training.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            new Center(
              child: Hero(
                tag: widget.training.title,
                child: Container(
                  height: 150.0,
                  width: 300.0,
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: widget.training.image,
                  ),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(20.0),
                child: Text("Former Name: ${widget.training.formerName}")),
            Padding(
                padding: EdgeInsets.all(20.0),
                child: Text("Date: ${widget.training.date}")),
            Padding(
                padding: EdgeInsets.all(20.0),
                child: Text("Place: ${widget.training.place}")),
            Padding(
                padding: EdgeInsets.all(20.0),
                child: Text("Description: ${widget.training.description}")),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red[300],
          child: _isFav
              ? Icon(
                  Icons.favorite,
                )
              : Icon(
                  Icons.favorite_border,
                ),
          onPressed: () => setState(() {
                _isFav = !_isFav;
              })),
    );
  }
}
