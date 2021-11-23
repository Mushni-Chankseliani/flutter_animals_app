import 'package:animals_app/provider/animals_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle = TextButton.styleFrom(
      primary: Colors.white,
      backgroundColor: Colors.teal,
      shape: const BeveledRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
    );

    final animalsProvider = Provider.of<AnimalsProvider>(
      context,
      listen: false,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animals'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 50.0),
              child: Consumer<AnimalsProvider>(
                builder: (context, animalsProvider, child) => Image(
                  image: NetworkImage(
                    animalsProvider.animalImageUrl!,
                  ),
                  height: 300,
                  width: 300,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                margin: const EdgeInsets.only(right: 20.0),
                child: TextButton(
                  style: buttonStyle,
                  onPressed: () {
                    animalsProvider.changeAnimal('dog');
                  },
                  child: const Text('Dog'),
                ),
              ),
              TextButton(
                style: buttonStyle,
                onPressed: () {
                  animalsProvider.changeAnimal('guinea_pig');
                },
                child: const Text('Guinea'),
              )
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                margin: const EdgeInsets.only(right: 20.0),
                child: TextButton(
                  style: buttonStyle,
                  onPressed: () {
                    animalsProvider.changeAnimal('giraffee');
                  },
                  child: const Text('Giraffee'),
                ),
              ),
              TextButton(
                style: buttonStyle,
                onPressed: () {
                  animalsProvider.changeAnimal('cat');

                  // updateImage(
                  //     'https://i.ytimg.com/vi/WxGEvT9Tquw/hqdefault.jpg');
                },
                child: const Text('Cat'),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
