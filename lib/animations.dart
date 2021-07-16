import 'package:animation_implicit/All_animations/Animatedcontainer.dart';
import 'package:flutter/material.dart';

class AllAnimmations extends StatefulWidget {
  const AllAnimmations({Key? key}) : super(key: key);

  @override
  _AllAnimmationsState createState() => _AllAnimmationsState();
}

class _AllAnimmationsState extends State<AllAnimmations> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
          //  mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context)=>
                  AniContainer()
                ));
              }, child: Text('Animated Container'))
            ],
          ),
        ),
      ),
    );
  }
}
