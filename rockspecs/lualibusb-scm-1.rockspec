package = "lualibusb"
version = "scm-1"
source = {
  url = "git://github.com/Neopallium/lua-zmq.git",
}
description = {
  summary = "Lua bindings to ",
  homepage = "http://github.com/Neopallium/lua-zmq",
  license = "MIT/X11",
}
dependencies = {
  "lua >= 5.1",
}
external_dependencies = {
  LIBUSB = {
    header = "usb.h",
    library = "usb",
  }
}
build = {
  type = "builtin",
  modules = {
    libusb = {
      sources = {"lualibusb.c"},
      incdirs = "$(LIBUSB_INCDIR)",
      libdirs = "$(LIBUSB_LIBDIR)",
      libraries = {"usb"},
    },
  },
  install = {
    lua = {
    },
  }
}
