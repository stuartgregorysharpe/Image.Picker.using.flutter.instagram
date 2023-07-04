import 'dart:io';
import 'package:flutter/material.dart';
import 'package:photo_gallery/photo_gallery.dart';

class GalleryPage extends StatefulWidget {
  @override
  _GalleryPageState createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  List<Medium> _media = [];

  @override
  void initState() {
    super.initState();
    initGallery();
  }

  void initGallery() async {
    List<Album> albums = await PhotoGallery.listAlbums(mediumType: MediumType.image);
    for (var album in albums) {
      _media.addAll(await album.listMedia());
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery'),
      ),
      body: GridView.builder(
        itemCount: _media.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemBuilder: (BuildContext context, int index) {
          final medium = _media[index];
          return GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  content: Image.file(File(medium.path)),
                  actions: <Widget>[
                    TextButton(
                      child: Text('Close'),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  ],
                ),
              );
            },
            child: Image.file(
              File(medium.thumbnail.path),
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
