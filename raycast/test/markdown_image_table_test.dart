import 'package:raycast/markdown_image_table.dart';
import 'package:test/test.dart';

void main() {
  const text =
      '<img width="1000" height="1000" alt="Image" src="https://github.com/user-attachments/assets/1" />';

  test('extracts single image into 1 column table', () {
    const table = MarkdownImageTable(
      text: text,
      columnCount: 1,
    );
    final result = table.exec();
    const expected = '''
| |
| - |
| <img src="https://github.com/user-attachments/assets/1" /> |
''';
    expect(result, expected);
  });

  test('extracts 2 images into 2 column table', () {
    const table = MarkdownImageTable(
      text: '$text\n$text',
      columnCount: 2,
    );
    final result = table.exec();
    const expected = '''
| | |
| - | - |
| <img src="https://github.com/user-attachments/assets/1" /> | <img src="https://github.com/user-attachments/assets/1" /> |
''';
    expect(result, expected);
  });

  test('extracts 3 images into 2 column table (wrapping)', () {
    const table = MarkdownImageTable(
      text: '$text $text $text',
      columnCount: 2,
    );
    final result = table.exec();
    const expected = '''
| | |
| - | - |
| <img src="https://github.com/user-attachments/assets/1" /> | <img src="https://github.com/user-attachments/assets/1" /> |
| <img src="https://github.com/user-attachments/assets/1" /> | |
''';
    expect(result, expected);
  });

  test('returns empty table structure when no images found', () {
    const table = MarkdownImageTable(
      text: 'No images here',
      columnCount: 2,
    );
    final result = table.exec();
    const expected = '''
| | |
| - | - |
''';
    expect(result, expected);
  });
}
