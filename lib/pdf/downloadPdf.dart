import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class DownloadPdf extends StatefulWidget {
  const DownloadPdf({Key? key}) : super(key: key);

  @override
  State<DownloadPdf> createState() => _DownloadPdfState();
}

class _DownloadPdfState extends State<DownloadPdf> {
  Dio dio = Dio();
  double progress = 0.0;

  void startDownloading() async {
    const String url = "https://www.africau.edu/images/default/sample.pdf";
    const String filename = "book";
    String path = await _getFilePath(filename);
    await dio.download(
      url,
      path,
      onReceiveProgress: (recieveBytes, totalBytes) {
        setState(() {
          progress = recieveBytes / totalBytes;
        });
        print(progress);
      },
      deleteOnError: true,
    ).then((_) {
      Navigator.pop(context);
    });
  }

  Future<String> _getFilePath(String filename) async {
    final dir = await getApplicationDocumentsDirectory();
    return "${dir.path}/$filename";
  }

  @override
  void initState() {
    super.initState();
    startDownloading();
  }

  @override
  Widget build(BuildContext context) {
    String downloadingProgress = (progress * 100).toInt().toString();
    return AlertDialog(
      backgroundColor: Colors.black87,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const CircularProgressIndicator.adaptive(
            backgroundColor: Colors.grey,
            valueColor: AlwaysStoppedAnimation(Colors.teal),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Downloading: $downloadingProgress%',
            style: TextStyle(color: Colors.white, fontFamily: 'Raleway'),
          )
        ],
      ),
    );
  }
}
