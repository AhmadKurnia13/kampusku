import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/mata_kuliah.dart';

class BerandaScreen extends StatelessWidget {
  const BerandaScreen({super.key});

  static const _jadwal = [
    MataKuliah(
      kode: 'IF-024',
      nama: 'Pemrograman Mobile II',
      sks: 3,
      hari: 'Senin',
    ),
    MataKuliah(
      kode: 'IF-021',
      nama: 'Basis Data',
      sks: 3,
      hari: 'Selasa',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // Format tanggal
    final tanggalHariIni = DateFormat(
      'EEEE, d MMMM y',
      'id_ID',
    ).format(DateTime.now());

    return Scaffold(
      // Warna background abu-abu sangat muda biar Card lebih menonjol
      backgroundColor: Colors.grey[100], 
      appBar: AppBar(
        title: const Text(
          'Kampusku',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
        elevation: 2,
        shadowColor: Colors.black26,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // 1. Header Tanggal Hari Ini (Pakai Card)
          Card(
            elevation: 0,
            color: Theme.of(context).colorScheme.primaryContainer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Jadwal Hari Ini',
                    style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    tanggalHariIni,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                ],
              ),
            ),
          ),
          
          const SizedBox(height: 24),
          
          // 2. Judul Daftar Mata Kuliah
          const Padding(
            padding: EdgeInsets.only(left: 4, bottom: 12),
            child: Text(
              'Daftar Mata Kuliah',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // 3. Looping Daftar Mata Kuliah
          for (final mk in _jadwal)
            Card(
              elevation: 2,
              margin: const EdgeInsets.only(bottom: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                // Ikon bulat di sebelah kiri
                leading: CircleAvatar(
                  backgroundColor: Theme.of(context)
                      .colorScheme
                      .primary
                      .withAlpha(25), // Transparansi 10%
                  child: Icon(
                    Icons.menu_book,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                title: Text(
                  mk.nama,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text('${mk.kode} • ${mk.hari} • ${mk.sks} SKS'),
                ),
                // Panah di sebelah kanan
                trailing: const Icon(Icons.chevron_right, color: Colors.grey),
                onTap: () {
                  // Nanti bisa diisi untuk pindah ke halaman detail
                },
              ),
            ),
        ],
      ),
    );
  }
}