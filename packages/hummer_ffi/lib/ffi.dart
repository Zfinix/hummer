/// bindings for `libhummer`

import 'dart:io';
import 'package:ffi/ffi.dart' as ffi;
import 'dart:ffi';

// ignore_for_file: unused_import, camel_case_types, non_constant_identifier_names
final DynamicLibrary _dl = _open();
DynamicLibrary _open() {
  if (Platform.isAndroid) return DynamicLibrary.open('libhummer_ffi.so');
  if (Platform.isIOS) return DynamicLibrary.executable();
  if (Platform.isMacOS) return DynamicLibrary.executable();
  throw UnsupportedError('This platform is not supported.');
}

/// C function `convert_to_wav`.
void convert_to_wav(
  Pointer<ffi.Utf8> filename,
  Pointer<ffi.Utf8> outfname,
) {
  _convert_to_wav(filename, outfname);
}
final _convert_to_wav_Dart _convert_to_wav = _dl.lookupFunction<_convert_to_wav_C, _convert_to_wav_Dart>('convert_to_wav');
typedef _convert_to_wav_C = Void Function(
  Pointer<ffi.Utf8> filename,
  Pointer<ffi.Utf8> outfname,
);
typedef _convert_to_wav_Dart = void Function(
  Pointer<ffi.Utf8> filename,
  Pointer<ffi.Utf8> outfname,
);

/// C function `play`.
void play(
  Pointer<ffi.Utf8> ptr,
) {
  _play(ptr);
}
final _play_Dart _play = _dl.lookupFunction<_play_C, _play_Dart>('play');
typedef _play_C = Void Function(
  Pointer<ffi.Utf8> ptr,
);
typedef _play_Dart = void Function(
  Pointer<ffi.Utf8> ptr,
);

/// C function `store_dart_post_cobject`.
void store_dart_post_cobject(
  Pointer<NativeFunction<Int8 Function(Int64, Pointer<Dart_CObject>)>> ptr,
) {
  _store_dart_post_cobject(ptr);
}
final _store_dart_post_cobject_Dart _store_dart_post_cobject = _dl.lookupFunction<_store_dart_post_cobject_C, _store_dart_post_cobject_Dart>('store_dart_post_cobject');
typedef _store_dart_post_cobject_C = Void Function(
  Pointer<NativeFunction<Int8 Function(Int64, Pointer<Dart_CObject>)>> ptr,
);
typedef _store_dart_post_cobject_Dart = void Function(
  Pointer<NativeFunction<Int8 Function(Int64, Pointer<Dart_CObject>)>> ptr,
);
