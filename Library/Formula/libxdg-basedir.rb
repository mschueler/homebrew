require 'formula'

class LibxdgBasedir <Formula
  url 'http://n.ethz.ch/~nevillm/download/libxdg-basedir/libxdg-basedir-1.1.0.tar.gz'
  homepage ''
  md5 ''

# depends_on 'cmake'

  def install
    ENV['PKG_CONFIG_DIR'] = '/opt/X11/lib/pkgconfig'
    system "./configure", "--disable-debug", "--disable-dependency-tracking", "--prefix=#{prefix}"
#   system "cmake . #{std_cmake_parameters}"
    system "make install"
  end
end
