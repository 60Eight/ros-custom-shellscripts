 #!/bin/bash

FONTS_ZIP_FILE="https://github.com/60Eight/ros-custom-shellscripts/raw/master/files/Quicksand.zip"
mkdir -p $BUILD_DIR/branding/fonts
echo "Downloading fonts zip file $FONTS_ZIP_FILE"
wget -O $BUILD_DIR/branding/fonts/custom_font.zip $FONTS_ZIP_FILE
tar -xzvf $BUILD_DIR/branding/fonts/custom_font.zip
sed -i "\$font_src_files += branding/fonts/Quicksand-Regular.ttf:frameworks/base/data/fonts/Quicksand-Regular.ttf" ${BUILD_DIR}/frameworks/base/data/fonts/Android.mk
sed -i "\$PRODUCT_PACKAGES += branding/fonts/Quicksand-Regular.ttf:frameworks/base/data/fonts/Quicksand-Regular.ttf" ${BUILD_DIR}/frameworks/base/data/fonts/fonts.mk

#Add '<family><font weight="400" style="normal">Quicksand-Regular.ttf</font></family>' to the end of <familyset> element
#sed -i "<familyset> += branding/fonts/Quicksand-Regular.ttf:system/media/Quicksand-Regular.ttf" ${BUILD_DIR}/frameworks/base/data/fonts/fonts.xml
#Add '<family><fileset><file>Quicksand-Regular.ttf</file></fileset></family>' to the end of <familyset> element
#sed -i "\$PRODUCT_PACKAGES += branding/fonts/bootanimation.ttf:system/media/bootanimation.ttf" ${BUILD_DIR}/frameworks/base/data/fonts/fallback_fonts.xml

