pub extern crate hum;
use std::ffi::CStr;
use std::os::raw::c_char;

pub fn play(ptr: *const c_char) {
  let cstr = unsafe { CStr::from_ptr(ptr) };
  hum::play(cstr.to_str().unwrap()).unwrap();
}

pub fn convert_to_wav(filename: *const c_char, outfname: *const c_char) {

  let file_n = unsafe { CStr::from_ptr(filename) };
  let out_n = unsafe { CStr::from_ptr(outfname) };
  hum::convert_to_wav(file_n.to_str().unwrap(), out_n.to_str().unwrap());
}
