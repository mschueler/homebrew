require 'formula'

class Libxcb <Formula
  url 'http://xcb.freedesktop.org/dist/libxcb-1.6.tar.bz2'
  homepage ''
  md5 'cba9f6d1137ef00d9b326726d0bab6fd'

# depends_on 'cmake'
  depends_on 'xcb-proto'
  depends_on 'pkg-config'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking", "--prefix=#{prefix}"
#   system "cmake . #{std_cmake_parameters}"
    system "make install"
  end
end
