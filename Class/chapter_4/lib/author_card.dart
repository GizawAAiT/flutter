import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';
import 'circle_image.dart';

class AuthorCard extends StatefulWidget {
// 1
  final String authorName;
  final String title;
  final ImageProvider? imageProvider;
  const AuthorCard({
    Key? key,
    required this.authorName,
    required this.title,
    this.imageProvider,
  }) : super(key: key);

  @override
  State<AuthorCard> createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {
  bool _liked = false;
// 2
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleImage(
                imageProvider: widget.imageProvider,
                imageRadius: 32,
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.authorName,
                    style: FooderlichTheme.darkTextTheme.headline2,
                  ),
                  Text(
                    widget.title,
                    style: FooderlichTheme.darkTextTheme.headline3,
                  )
                ],
              )
            ],
          ),
          IconButton(
// 4
              icon: Icon(_liked ? Icons.favorite : Icons.favorite_border),
              iconSize: 30,
              color: Color.fromARGB(255, 221, 18, 177),
// 5
              onPressed: () => setState(() {
                    ;
                    _liked = !_liked;
                  })),
        ],
      ),
    );
  }
}
