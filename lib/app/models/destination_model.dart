import 'package:flutter/material.dart';

class DestinationCard extends StatelessWidget {
  final String imageAsset;
  final String placeName;
  final String location;

  const DestinationCard({
    Key? key,
    required this.imageAsset,
    required this.placeName,
    required this.location,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: Image.asset(
                  imageAsset,
                  fit: BoxFit.cover,
                  height: 150,
                  width: double.infinity,
                ),
              ),
              Positioned(
                right: 10,
                top: 10,
                width: 28,
                height: 30,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:
                        Colors.white38, // Warna latar belakang untuk lingkaran
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 25,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            placeName,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Text(
            location,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
