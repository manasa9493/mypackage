library my_plugin;

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class AddImages extends StatefulWidget {
  const AddImages({super.key});

  @override
  State<AddImages> createState() => _AddImagesState();
}

class _AddImagesState extends State<AddImages> {
  List<String> image=[
    "https://images.unsplash.com/photo-1552072092-7f9b8d63efcb",
    "https://images.unsplash.com/flagged/photo-1574005280900-3ff489fa1f70",
    "https://images.unsplash.com/photo-1591117207239-788bf8de6c3b",
    "https://images.unsplash.com/photo-1606335543042-57c525922933",
    "https://images.unsplash.com/photo-1555661530-68c8e98db4e6",
    "https://images.unsplash.com/photo-1631132329534-0e7e1b94d494"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        child:CarouselSlider.builder(
            itemCount: image.length,
            itemBuilder: (context,index,pageViewIndex){
              return Container(
                child: Image.network(image.elementAt(index)),
              );
            },
            options: CarouselOptions(
                autoPlay: true
            )
        )
    );
  }
}

