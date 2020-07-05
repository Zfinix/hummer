import 'package:ffi/ffi.dart';
import 'package:hummer_ffi/ffi.dart' as ffi;

class HummerFfi {
  play(String filename) {
    return ffi.play(Utf8.toUtf8(filename));
  }

  convertToWav(String filename, String outFile) {
    return ffi.convert_to_wav(Utf8.toUtf8(filename), Utf8.toUtf8(outFile));
  }
}
