import 'package:flutter/material.dart';

class CustomImageClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.moveTo(0, 0);
    path.lineTo(size.width * 0.85, 0);

    path.quadraticBezierTo(size.width, 0, size.width, size.height * 0.15);

    path.lineTo(size.width, size.height * 0.85);
    path.quadraticBezierTo(
        size.width, size.height, size.width * 0.85, size.height);

    path.lineTo(size.width * 0.15, size.height);
    path.quadraticBezierTo(0, size.height, 0, size.height * 0.85);

    path.lineTo(0, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

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
              ClipPath(
                clipper: CustomImageClipper(),
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
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white38,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(4),
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
            overflow: TextOverflow.ellipsis,
          ),
          Row(
            children: [
              Icon(
                Icons.gps_fixed,
                size: 23,
                color: const Color.fromARGB(255, 78, 172, 248),
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
        ],
      ),
    );
  }
}
