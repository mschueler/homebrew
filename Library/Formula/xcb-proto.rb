require 'formula'

class XcbProto <Formula
  url 'http://xcb.freedesktop.org/dist/xcb-proto-1.6.tar.bz2'
  homepage ''
  md5 '04313e1d914b44d0e457f6c494fc178b'

# depends_on 'cmake'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking", "--prefix=#{prefix}"
    system "make install"
  end
end
