import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class FileUploadScreen extends StatefulWidget {
  @override
  _FileUploadScreenState createState() => _FileUploadScreenState();
}

class _FileUploadScreenState extends State<FileUploadScreen> {
  final ImagePicker _imagePicker = ImagePicker();
  XFile? selectedFile;

  // Function to show the bottom sheet for file selection
  void _showFileSelectionBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: Icon(Icons.camera),
              title: Text('Take a photo'),
              onTap: () async {
                final image = await _imagePicker.pickImage(source: ImageSource.camera);
                if (image != null) {
                  setState(() {
                    selectedFile = image;
                  });
                }
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: Icon(Icons.photo),
              title: Text('Choose from gallery'),
              onTap: () async {
                final image = await _imagePicker.pickImage(source: ImageSource.gallery);
                if (image != null) {
                  setState(() {
                    selectedFile = image;
                  });
                }
                Navigator.of(context).pop();
              },
            ),
            // Add more options for other file sources (e.g., document picker, etc.)
          ],
        );
      },
    );
  }

  // Function to save the selected file to Firebase Storage
  void _saveToFirebaseStorage() {
    if (selectedFile != null) {
      // Implement Firebase Storage upload logic here
      // You would typically use a package like Firebase Storage for this.
      // Upload `selectedFile.path` to Firebase Storage.
      // Once the file is uploaded, you can retrieve its URL.
      // Example code for uploading to Firebase Storage:
      // FirebaseStorage.instance.ref('uploads/${selectedFile.name}').putFile(File(selectedFile.path));
      // You can then use the URL to display or download the file.
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('File Upload Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            selectedFile != null
                ? Column(
              children: [
                Text('Selected File: ${selectedFile!.name}'),
                ElevatedButton(
                  onPressed: _saveToFirebaseStorage,
                  child: Text('Save to Firebase Storage'),
                ),
              ],
            )
                : Text('No file selected'),
            ElevatedButton(
              onPressed: () => _showFileSelectionBottomSheet(context),
              child: Text('Choose a File'),
            ),
          ],
        ),
      ),
    );
  }
}