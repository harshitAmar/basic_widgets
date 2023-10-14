import 'package:flutter/material.dart';

class ContainerExample extends StatelessWidget {
  const ContainerExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container Properties Example'),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(16.0),
            padding: const EdgeInsets.all(16.0),
            width: 200.0,
            height: 200.0,
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(color: Colors.red, width: 2.0),
              shape: BoxShape.rectangle,
            ),
            child: Container(
              width: 100.0,
              height: 100.0,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.yellow,
              ),
              child: Center(
                child: Transform.rotate(
                  angle: 0.2,
                  child: const Text(
                    'Container Example',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
              width: size.width / 2,
              height: size.height * .5,
              alignment: Alignment.center,
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(16.0),
              color: Colors.amber,
              child: FadeInImage(
                  imageErrorBuilder: (context, error, reason) {
                    return const Text("Image not available");
                  },
                  placeholder: const AssetImage("assets/place-holder.jpg"),
                  image: const NetworkImage(
                      "https://images.unsplash.com/photo-1696960245767-8d62930c76dd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1974&q=80"))),
        ],
      ),
    );
  }
}
