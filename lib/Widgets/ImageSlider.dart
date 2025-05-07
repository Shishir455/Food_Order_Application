import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
  final String tittle;
  final List<String> imageSlider;

  const ImageSlider({
    super.key,
    required this.imageSlider,
    required this.tittle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (tittle.isNotEmpty) // Show only if title is provided
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Text(
              tittle,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white, // You can change this depending on background
              ),
            ),
          ),
        CarouselSlider(
          options: CarouselOptions(
            height: 180, // Adjusted height to fit title
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            viewportFraction: 1.0,
          ),
          items: imageSlider.map((url) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                url,
                width: double.infinity,
                fit: BoxFit.cover,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Center(child: CircularProgressIndicator());
                },
                errorBuilder: (context, error, stackTrace) =>
                    Center(child: Icon(Icons.broken_image, color: Colors.red)),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
