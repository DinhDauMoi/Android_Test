import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  String? fileName;
  Future<void> pickExcelFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowMultiple: true,
    );
  }
}
