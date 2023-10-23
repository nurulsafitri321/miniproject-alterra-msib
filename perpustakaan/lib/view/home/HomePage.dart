import 'package:flutter/material.dart';

import 'package:perpustakaan/model/buku.dart';
import 'package:perpustakaan/repository/repository.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        title: const Text('Perpustakaan'),
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
