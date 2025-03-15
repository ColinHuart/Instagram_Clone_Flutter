import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

pickImage(ImageSource source) async {
  final ImagePicker imagePicker = ImagePicker();

  XFile? imageFile = await imagePicker.pickImage(source: source);

  if (imageFile != null) {
    return await imageFile.readAsBytes();
  }
  print('No image selected');
  return null;
}

showSnackBar(String content, BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(content)));
}
