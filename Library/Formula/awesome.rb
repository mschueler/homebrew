require 'formula'

class Awesome < Formula
  url 'http://awesome.naquadah.org/download/awesome-3.4.5.tar.bz2'
  homepage ''
  md5 '7df5cec82d69bf72d38c8af8116512e9'

  depends_on 'cmake'
  depends_on 'git'
  depends_on 'lua'
  depends_on 'imagemagick'
  depends_on 'libev'

  depends_on 'startup-notification'
  depends_on 'libxdg-basedir'
  depends_on 'pango'
  depends_on 'xcb-util'
  depends_on 'cairo'

  def install
    ENV['PKG_CONFIG_PATH'] = "/usr/local/lib/pkgconfig:/opt/X11/lib/pkgconfig"
    system "cmake . #{std_cmake_parameters}"
    system "make install"
  end
end
