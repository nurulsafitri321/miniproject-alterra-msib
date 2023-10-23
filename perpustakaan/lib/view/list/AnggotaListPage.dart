import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:perpustakaan/model/anggota.dart';
import 'package:perpustakaan/repository/repository.dart';

class AnggotaListPage extends StatelessWidget {
  const AnggotaListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Anggota'),
      ),
      body: GetBuilder<AnggotaController>(
        init: AnggotaController(),
        builder: (controller) {
          return ListView.builder(
            itemCount: controller.anggotas.length,
            itemBuilder: (context, index) {
              Anggota anggota = controller.anggotas[index];
              return ListTile(
                title: Text(anggota.nama),
                subtitle: Text(anggota.alamat),
                onTap: () {
                  Get.toNamed('/anggota-detail', arguments: anggota);
                },
              );
            },
          );
        },
      ),
    );
  }
}

class AnggotaController extends GetxController {
  RxList<Anggota> anggotas = RxList<Anggota>();

  @override
  void onInit() {
    super.onInit();
    loadAnggota();
  }

  void loadAnggota() {
    Repository.getAnggota().then((anggotas) {
      this.anggotas.value = anggotas;
    });
  }
}
