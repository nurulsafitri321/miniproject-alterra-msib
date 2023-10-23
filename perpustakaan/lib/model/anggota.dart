class Anggota {
  final int id;
  final String nama;
  final String alamat;
  // ignore: non_constant_identifier_names
  final String nomor_telepon;

  Anggota({
    required this.id,
    required this.nama,
    required this.alamat,
    // ignore: non_constant_identifier_names
    required this.nomor_telepon,
  });

  factory Anggota.fromMap(Map<String, dynamic> map) {
    return Anggota(
      id: map['id'],
      nama: map['nama'],
      alamat: map['alamat'],
      nomor_telepon: map['nomor_telepon'],
    );
  }

Map<String, Object?> toMap() {
  // ...
  throw Exception('Anggota tidak ditemukan'); // Melempar pengecualian
}

  // Map<String, Object?> getAnggota() {
  //   return{};
  // }
}
