import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ImagePicker extends StatefulWidget {
  @override
  _ImagePickerState createState() => _ImagePickerState();
}

class _ImagePickerState extends State<ImagePicker> {

  File _image;

  Future _pickImage() async {
    final pickedImage = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = File(pickedImage.path);
    });

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CircleAvatar(
          radius: 40,
          //show the picked image as a preview using FileImage
          backgroundImage: _image !=null ? FileImage(_image) : null,
        ),
        FlatButton.icon(
        onPressed: _pickImage, 
        icon: Icon(Icons.add_a_photo), 
        label: Text('Add Image'),
        ),
      ],
    );
  }
}
