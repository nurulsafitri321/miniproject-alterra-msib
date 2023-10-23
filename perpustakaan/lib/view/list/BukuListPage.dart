import 'package:flutter/material.dart';

import 'package:perpustakaan/model/buku.dart';
import 'package:perpustakaan/repository/repository.dart';

class BukuListPage extends StatefulWidget {
  const BukuListPage({Key? key}) : super(key: key);

  @override
  State<BukuListPage> createState() => _BukuListPageState();
}

class _BukuListPageState extends State<BukuListPage> {
  late Future<List<Buku>> _bukus;

  @override
  void initState() {
    super.initState();
    _bukus = Repository.getBuku();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Buku'),
      ),
      body: FutureBuilder<List<Buku>>(
        future: _bukus,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                Buku buku = snapshot.data![index];
                return ListTile(
                  title: Text(buku.judul),
                  subtitle: Text(buku.penulis),
                  trailing: IconButton(
                    icon: Icon(Icons.book),
                    onPressed: () {
                      Navigator.pushNamed(context, '/buku-detail', arguments: buku);
                    },
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          } else {
            return Center(child: Text('Belum ada buku'));
          }
        },
      ),
    );
  }
}
