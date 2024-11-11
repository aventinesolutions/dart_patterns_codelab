import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'data.dart';

void main() {
  runApp(const DocumentApp());
}

class DocumentApp extends StatelessWidget {
  const DocumentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: DocumentScreen(
        document: Document(),
      ),
    );
  }
}

class DocumentScreen extends StatelessWidget {
  final Document document;

  const DocumentScreen({
    required this.document,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final metadataRecord = document.metadata;
    final formattedModified =
        'Last modified ${DateFormat('yyyy-MM-dd HH:mm:ss').format(metadataRecord.modified)}';

    return Scaffold(
      appBar: AppBar(
        title: Text(metadataRecord.$1),
      ),
      body: Column(
        children: [
          Center(
            child: Text(formattedModified),
          ),
        ],
      ),
    );
  }
}
