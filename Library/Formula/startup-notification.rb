require 'formula'

class StartupNotification <Formula
  url 'http://www.freedesktop.org/software/startup-notification/releases/startup-notification-0.10.tar.gz'
  homepage ''
  md5 'bca0ed1c74bc4e483ea2ed12a5717354'

  def install
    ENV['PKG_CONFIG_PATH'] = "/usr/local/lib/pkgconfig:/opt/X11/lib/pkgconfig"
    system "./configure", "--disable-debug", "--disable-dependency-tracking", "--x-includes=/opt/X11/include", "--x-libraries=/opt/X11/lib", "--prefix=#{prefix}"
    system "make install"
  end
end
