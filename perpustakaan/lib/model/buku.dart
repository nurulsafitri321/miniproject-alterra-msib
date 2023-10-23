class Buku {
  final int id;
  final String judul;
  final String penulis;
  final String penerbit;
  final String kategori;
  final int stok;

  Buku({
    required this.id,
    required this.judul,
    required this.penulis,
    required this.penerbit,
    required this.kategori,
    required this.stok,
  });

  factory Buku.fromMap(Map<String, dynamic> map) {
    return Buku(
      id: map['id'],
      judul: map['judul'],
      penulis: map['penulis'],
      penerbit: map['penerbit'],
      kategori: map['kategori'],
      stok: map['stok'],
    );
  }

  String get deskripsi => null!;

 Map<String, Object?> toMap() {
  // ...
  throw Exception('Anggota tidak ditemukan'); // Melempar pengecualian
}

  // Map<String, Object?> getBuku()  {
  //   return {};
  // }
}
