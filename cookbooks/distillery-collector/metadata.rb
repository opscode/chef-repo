name             'distillery-collector'
maintainer       'Wistia, Inc.'
maintainer_email 'dev@wistia.com'
license          'All rights reserved'
description      'Installs/Configures distillery-collector'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends          'application'
depends          'apt'
depends          'god'
depends          'haproxy'
depends          'mongodb'
depends          'ntp'
depends          'logrotate'
depends          'rbenv'
