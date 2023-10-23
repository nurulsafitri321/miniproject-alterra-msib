class Peminjaman {
  final int id;
  final int id_buku;
  final int id_anggota;
  final DateTime tanggal_pinjam;
  final DateTime tanggal_kembali;

  Peminjaman({
    required this.id,
    required this.id_buku,
    required this.id_anggota,
    required this.tanggal_pinjam,
    required this.tanggal_kembali,
  });

  factory Peminjaman.fromMap(Map<String, dynamic> map) {
    return Peminjaman(
      id: map['id'],
      id_buku: map['id_buku'],
      id_anggota: map['id_anggota'],
      tanggal_pinjam: DateTime.parse(map['tanggal_pinjam']),
      tanggal_kembali: DateTime.parse(map['tanggal_kembali']),
    );
  }
}
