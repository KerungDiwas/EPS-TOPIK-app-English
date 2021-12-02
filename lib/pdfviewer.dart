import 'package:epstopikenglish/datamodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfViewer extends StatelessWidget {
  final DataModel dataModel;
  const PdfViewer({Key? key, required this.dataModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarIconBrightness: Brightness.dark));
    return Scaffold(
      body: SafeArea(
          child: SfPdfViewer.asset(
        dataModel.pdfname,
        canShowScrollHead: false,
      )),
    );
  }
}
