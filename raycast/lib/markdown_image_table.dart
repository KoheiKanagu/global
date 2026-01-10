class MarkdownImageTable {
  const MarkdownImageTable({
    required this.text,
    required this.columnCount,
  });

  final String text;

  final int columnCount;

  String exec() {
    final regExp = RegExp('https://[^"]*');
    final matches = regExp.allMatches(text);
    final imageUrls = matches.map((m) => m.group(0)!).toList();

    final totalImages = imageUrls.length;
    final rows = (totalImages + columnCount - 1) ~/ columnCount;
    final buffer = StringBuffer('|');

    for (var j = 0; j < columnCount; j++) {
      buffer.write(' |');
    }
    buffer
      ..write('\n')
      // Separator
      ..write('|');

    for (var j = 0; j < columnCount; j++) {
      buffer.write(' - |');
    }
    buffer.write('\n');

    for (var i = 0; i < rows; i++) {
      buffer.write('|');

      for (var j = 0; j < columnCount; j++) {
        final index = i * columnCount + j;
        if (index < totalImages) {
          buffer.write(' <img src="${imageUrls[index]}" /> |');
        } else {
          buffer.write(' |');
        }
      }
      buffer.write('\n');
    }

    return buffer.toString();
  }
}
