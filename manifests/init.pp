# == Class: imagemagick
#
# Installs the imagemagick package.
#
class imagemagick {
  package { 'imagemagick':
    ensure => 'present',
  }

  file { '/etc/ImageMagick/policy.xml':
    ensure  => 'present',
    content => file('imagemagick/etc/ImageMagick/policy.xml'),
    require => Package['imagemagick'],
  }
}
