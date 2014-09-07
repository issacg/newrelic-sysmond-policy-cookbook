name             'newrelic-sysmond-policy'
maintainer       'Issac Goldstand'
maintainer_email 'margol@beamartyr.net'
license          'All rights reserved'
description      'Installs/Configures newrelic-sysmond-policy startup/shutdown scripts'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'nodejs', '~> 2.0.0'
depends 'newrelic', '~> 2.0.0'
