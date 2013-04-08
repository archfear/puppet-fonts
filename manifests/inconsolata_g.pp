# Public: Install Inconsolata-g.
#
# Examples
#
#   include fonts::inconsolata_g
class fonts::inconsolata_g {
  zipped_font { 'Inconsolata-g':
    url     => 'http://www.fantascienza.net/leonardo/ar/inconsolatag/inconsolata-g_font.zip',
    creates => 'Inconsolata-g.ttf'
  }
}
