import 'package:flutter/material.dart';

import 'package:perpustakaan/model/buku.dart';

class BukuDetailPage extends StatelessWidget {
  final Buku buku;

  const BukuDetailPage({Key? key, required this.buku}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(buku.judul),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              buku.judul,
              style: const TextStyle(fontSize: 24.0),
            ),
            const SizedBox(height: 8.0),
            Text(
              buku.penulis,
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 8.0),
            Text(
              buku.penerbit,
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 8.0),
            Text(
              buku.kategori,
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 8.0),
            Text(
              buku.deskripsi,
              style: const TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
