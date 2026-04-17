@TestOn("vm")
import 'package:exif/exif.dart';
import 'package:test/test.dart';

import 'read_samples.dart';

void main() async {
  await for (final file in readSamples()) {
    test(file.name, () {
      final exifDump = printExifOfBytes(file.getContent());
      expect(exifDump, equals(file.dump));
    });
  }
}
