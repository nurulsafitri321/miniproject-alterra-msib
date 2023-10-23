import 'package:path/path.dart';
import 'package:perpustakaan/model/anggota.dart';
import 'package:perpustakaan/model/buku.dart';
import 'package:sqflite/sqflite.dart';



class Repository {
  static Database? _database;

  static Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }

    // Open the database
    String path = await getDatabasesPath();
    path = join(path, 'perpustakaan.db');
    _database = await openDatabase(path, version: 1, onCreate: _onCreate);
    return _database!;
  }

  static Future<void> _onCreate(Database db, int version) async {
    // Create the tables
    await db.execute('CREATE TABLE buku (id INTEGER PRIMARY KEY, judul TEXT, penulis TEXT, penerbit TEXT, kategori TEXT, deskripsi TEXT)');
    await db.execute('CREATE TABLE anggota (id INTEGER PRIMARY KEY, nama TEXT, alamat TEXT, nomor_telepon TEXT)');
  }

  static Future<List<Buku>> getBuku() async {
    // Get the database
    Database db = await database;

    // Query the database
    List<Map<String, dynamic>> maps = await db.query('buku');

    // Convert the maps to a list of books
    List<Buku> bukus = [];
    for (Map<String, dynamic> map in maps) {
      bukus.add(Buku.fromMap(map));
    }

    return bukus;
  }

  static Future<void> addBuku(Buku buku) async {
    // Get the database
    Database db = await database;

    // Insert the book
    await db.insert('buku', buku.toMap());
  }

  static Future<void> updateBuku(Buku buku) async {
    // Get the database
    Database db = await database;

    // Update the book
    await db.update('buku', buku.toMap(), where: 'id = ?', whereArgs: [buku.id]);
  }

  static Future<void> deleteBuku(int id) async {
    // Get the database
    Database db = await database;

    // Delete the book
    await db.delete('buku', where: 'id = ?', whereArgs: [id]);
  }

  static Future<List<Anggota>> getAnggota() async {
    // Get the database
    Database db = await database;

    // Query the database
    List<Map<String, dynamic>> maps = await db.query('anggota');

    // Convert the maps to a list of anggota
    List<Anggota> anggotas = [];
    for (Map<String, dynamic> map in maps) {
      anggotas.add(Anggota.fromMap(map));
    }

    return anggotas;
  }

  static Future<void> addAnggota(Anggota anggota) async {
    // Get the database
    Database db = await database;

    // Insert the anggota
    await db.insert('anggota', anggota.toMap());
  }

  static Future<void> updateAnggota(Anggota anggota) async {
    // Get the database
    Database db = await database;

    // Update the anggota
    await db.update('anggota', anggota.toMap(), where: 'id = ?', whereArgs: [anggota.id]);
  }

  static Future<void> deleteAnggota(int id) async {
    // Get the database
    Database db = await database;

    // Delete the anggota
    await db.delete('anggota', where: 'id = ?', whereArgs: [id]);
  }
}
