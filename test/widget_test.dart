import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:kampusku/app.dart';

void main() {
  testWidgets('Menampilkan judul Kampusku dan daftar mata kuliah', (
    WidgetTester tester,
  ) async {
    await initializeDateFormatting('id_ID');
    await tester.pumpWidget(const KampusKuApp());

    expect(find.text('Kampusku'), findsOneWidget);
    expect(find.text('Pemrograman Mobile II'), findsOneWidget);
    expect(find.text('Basis Data'), findsOneWidget);
  });
}
