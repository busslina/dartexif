import 'package:exif/src/file_interface.dart';

FileReader createFileReaderFromFile(dynamic file) {
  if (file is List<int>) {
    return FileReader.fromBytes(file);
  }
  throw UnsupportedError("Can't read file of type: ${file.runtimeType}");
}
