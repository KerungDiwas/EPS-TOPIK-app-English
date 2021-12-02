import 'package:epstopikenglish/datamodel.dart';
import 'package:epstopikenglish/drawer.dart';
import 'package:epstopikenglish/pdfviewer.dart';
import 'package:flutter/material.dart';
import 'list.dart';

class Contents extends StatefulWidget {
  const Contents({Key? key}) : super(key: key);

  @override
  State<Contents> createState() => _ContentsState();
}

class _ContentsState extends State<Contents> {
  @override
  Widget build(BuildContext context) {
    final english = topicTrans;
    final korean = topic;
    final pdfLocation = pdfLocationList;

    final List<DataModel> pdfData = List.generate(
        pdfLocation.length, (index) => DataModel(pdfLocation[index]));

    return Scaffold(
      drawer: const Drawer(child: Drawer2()),
      backgroundColor: Colors.red[50],
      appBar: AppBar(
        title: const Text('EPS TOPIK BOOK'),
      ),
      body: ListView.builder(
          itemCount: english.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 7,
              child: InkWell(
                highlightColor: Colors.grey[350],
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          PdfViewer(dataModel: pdfData[index])));
                },
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 38,
                      height: 38,
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: Colors.black)),
                      child: Text(
                        '${index + 1}',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(english[index],
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold)),
                          Text(korean[index]),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
