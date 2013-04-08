define fonts::zipped_font($url, $creates, $type='ttf') {
  $font_dir     = '/Library/Fonts'
  $font_tmp_dir = "/tmp/${name}"
  $font_zip     = "${font_tmp_dir}/font.zip"

  exec { "download and install ${name} font":
    command => "rm -rf ${font_tmp_dir} && \
                mkdir ${font_tmp_dir} && \
                curl ${url} -L -q -o '${font_zip}' && \
                unzip '${font_zip}' -d ${font_tmp_dir} && \
                find ${font_tmp_dir} -name *.${type} -exec mv {} ${font_dir} ';' && \
                rm -rf '${font_tmp_dir}'",
    unless  => "test -f ${font_dir}/${creates}",
    creates => "${font_dir}/${creates}"
  }
}
