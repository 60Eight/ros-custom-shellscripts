 #!/bin/bash

FONTS_ZIP_FILE="https://github.com/60Eight/ros-custom-shellscripts/raw/master/files/GoogleSans.zip"
mkdir -p $BUILD_DIR/branding
echo "Downloading fonts zip file $FONTS_ZIP_FILE"
wget -O $BUILD_DIR/branding/custom_font.zip $FONTS_ZIP_FILE
unzip -o $BUILD_DIR/branding/custom_font.zip -d $BUILD_DIR/external/roboto-fonts
#sed -i '/font_src_files := /a  \\    Quicksand-Regular.ttf \\' ${BUILD_DIR}/frameworks/base/data/fonts/Android.mk
#sed -i '/PRODUCT_PACKAGES := /a  \\    Quicksand-Regular.ttf \\' ${BUILD_DIR}/frameworks/base/data/fonts/fonts.mk
#sed -i '/<familyset/a <family><font weight="400" style="normal">Quicksand-Regular.ttf<\/font><\/family>' ${BUILD_DIR}/frameworks/base/data/fonts/fonts.xml
#sed -i '/<familyset>/a <family><fileset><file>Quicksand-Regular.ttf<\/file><\/fileset><\/family>' ${BUILD_DIR}/frameworks/base/data/fonts/fallback_fonts.xml
