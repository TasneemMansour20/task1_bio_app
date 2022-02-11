

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:task1_bio_app/widgets/bio_card.dart';

class BioScreen extends StatelessWidget {
  const BioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar:true ,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('BIO',
            style: TextStyle(
                color: Colors.black,
                // fontFamily:'Charmonman',
                fontWeight: FontWeight.bold
            )
        ),
      ),
      body:Stack(
        children: [
          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 3,sigmaY: 3),
            child: Image.network('https://c.neh.tw/thumb/f/350/4874602127818752.jpg',
              height:double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Spacer(),
              const CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('images/img_avatar.png'),
              ),
              SizedBox(height: 15),
              const Text('Tasneem Nabil',
                style: TextStyle(
                  fontFamily:'Charmonman',
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 5),
              const Text('Flutter Course',
                style: TextStyle(
                    color: Colors.black45,
                    letterSpacing: 1,
                    fontSize: 15
                ),
              ),
              const Divider(
                thickness: 0.7,
                color: Colors.black87,
                height: 30,
                indent: 40,
                endIndent: 40,
              ),
              BioCard(
                leadingIcon: Icons.email,
                title: 'Email',
                subTitle: 'semo27NM@gmail.com',
                trailingIcon: Icons.send,
                marginBottom: 10,
                onPressed: () {
                  print('Email');
                },
              ),
              BioCard(
                leadingIcon: Icons.phone,
                title: 'Mobile',
                subTitle: '972-507-9956',
                trailingIcon: Icons.call,
                onPressed: () {
                  print('Mobile');
                },
              ),
              Spacer(),
              Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                      'Flutter  2022'
                  )
              ),
            ],
          ) ,
        ],
      ),
    );
  }
}

