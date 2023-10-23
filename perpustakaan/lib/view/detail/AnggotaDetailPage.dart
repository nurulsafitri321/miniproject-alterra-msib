import 'package:flutter/material.dart';

import 'package:perpustakaan/model/anggota.dart';

class AnggotaDetailPage extends StatelessWidget {
  final Anggota anggota;

  const AnggotaDetailPage({Key? key, required this.anggota}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(anggota.nama),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              anggota.nama,
              style: const TextStyle(fontSize: 24.0),
            ),
            const SizedBox(height: 8.0),
            Text(
              anggota.alamat,
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 8.0),
            Text(
              anggota.nomor_telepon,
              style: const TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
