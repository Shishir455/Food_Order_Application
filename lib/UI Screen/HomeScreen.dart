import 'package:flutter/material.dart';
import '../Widgets/CustomAppBar.dart';
import '../Widgets/GridViewItem.dart';
import '../Widgets/ImageSlider.dart';
import '../Widgets/ShowItemWidget.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<String> imageSlider = [];

  List<String> specialOfferImage = [];

  List<String> gridImage = [];

  List<String> regularItemImage = [];

  bool showAllNewArrival = false;
  bool showAllRegularItem = false;
  final int crossAxisCount = 4;

  @override
  Widget build(BuildContext context) {
    final int newArrivalCount =
        showAllNewArrival ? gridImage.length : crossAxisCount;
    final int regularItemCount =
        showAllRegularItem ? regularItemImage.length : crossAxisCount;

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(),
        backgroundColor: Colors.black,
        drawer: Drawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Top Picks
              Container(
                height: 250,
                width: double.infinity,
                child:
                    ImageSlider(imageSlider: imageSlider, tittle: 'Top Picks'),
              ),

              const SizedBox(height: 20),

              // New Arrival Items
              Container(
                color: Colors.black54,
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('New Arrival Item',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    SizedBox(height: 10),
                    GridViewItemWidget(
                        itemsToShow: newArrivalCount,
                        crossAxisCount: crossAxisCount,
                        gridImage: gridImage),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            showAllNewArrival = !showAllNewArrival;
                          });
                        },
                        child: Text(
                            showAllNewArrival ? 'Show Less' : 'Show More',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Special Offers
              Container(
                height: 250,
                width: double.infinity,
                color: Colors.black87,
                child: ImageSlider(
                    imageSlider: specialOfferImage, tittle: 'Special Offer'),
              ),

              const SizedBox(height: 20),

              // Regular Items
              Container(
                color: Colors.black54,
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Regular Item',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    SizedBox(height: 10),
                    GridViewItemWidget(
                        itemsToShow: regularItemCount,
                        crossAxisCount: crossAxisCount,
                        gridImage: regularItemImage),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            showAllRegularItem = !showAllRegularItem;
                          });
                        },
                        child: Text(
                            showAllRegularItem ? 'Show Less' : 'Show More',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),
             Container(
               color: Colors.blue,
               height: double.infinity,
               width: double.infinity,
               child: Padding(
                 padding: const EdgeInsets.all(10),
                 child: Column(
                   children: [
                     ShowItemWidget(),
                     const SizedBox( height:  10,),


                   ],
                 ),
               ),
             )
            ],
          ),
        ),
      ),
    );
  }
}


