# logo_set_for_dolphin
logo_set add menu item into Dolphin file manager for logotype setting on photo.
Work with jpg-photo and png-logo files.

# What does it do?
logo_set does two things:
- resizes image to 1920x1920 (if the photo has more resolution);
- adds logo into  bottom left corner;
- creates with_logo_bl directory in original image directory;
- result will be saved with the same file name and placed into with_logo_bl;

Works with separated file or with directory which contains photo files.

# Install
$ install_logo_set.sh <path_to_png_file>

For example, 
$ install_logo_set.sh /home/logo.png

# Note
Works with Dolphin ver. 17.12.3 (for KDE)
