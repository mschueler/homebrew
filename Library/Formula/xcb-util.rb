require 'formula'

class XcbUtil <Formula
  url 'http://xcb.freedesktop.org/dist/xcb-util-0.3.6.tar.bz2'
  homepage ''
  md5 'dd8968b8ee613cb027a8ef1fcbdc8fc9'

# depends_on 'cmake'
# depends_on 'libxcb'

  def install
    ENV['PKG_CONFIG_PATH'] = "/opt/X11/lib/pkgconfig"
    system "./configure", "--disable-debug", "--disable-dependency-tracking", "--prefix=#{prefix}"
#   system "cmake . #{std_cmake_parameters}"
    system "make install"
  end
end
