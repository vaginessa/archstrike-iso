#!/usr/bin/perl

# obmenu-generator - configuration file
# This file is updated automatically every time when is needed.
# Any additional comment and/or indentation will be lost.

=for comment

categories_case_sensitive => BOOL (default: 0)
- True (1) to make the category names case sensitive;
- By default, "XFCE-4" is equivalent with "xfce_4".

clean_command_name_re => REGEX
- Remove from the command name anything matched by the regex.

skip_app_command_re => REGEX
- Skip the application if its command name matches the regex.

skip_app_name_re => REGEX
- Skip the application if its name matches the regex.

skip_file_content_re => REGEX
- Skip the application if the content of the *.desktop
  file matches the regex.

skip_file_name_re => REGEX
- Skip the application if its file name matches the regex.
  Name is from the last slash to the end. (example: file.desktop)

skip_svg_icons => BOOL
- True (1) to skip the SVG icons.

desktop_files_paths => ARRAY REF
- Paths which contains the desktop files.

wine_desktop_files_paths => ARRAY REF
- Directories which contains desktop files generated by the wine app.

wine_skip_exec_re => REGEX
- Skip the wine application if its command matches the regex.

wine_skip_name_re => REGEX
- Skip the wine application if its name matches the regex.

editor => STRING
- Text editor command.

terminal => STRING
- Terminal command.

gtk_rc_filename => STRING - full path to file
- GTK configuration file. (autodetected)

icon_dirs_first => ARRAY REF
- When looking for full icon paths, look in this directories first,
  before looking in the directories of the current icon theme.

icon_dirs_second => ARRAY REF
- When looking for full icon paths, look in this directories as a
  second icon theme. (Before /usr/share/pixmaps)

icon_dirs_last => ARRAY REF
- Look in this directories at the very last, after looked in
  /usr/share/pixmaps, /usr/share/icons/hicolor and some other
  directories.

use_only_my_icon_dirs => BOOL
- True (1) to look only in directories specified in the above ARRAY REF's.
- False (0) to look in other directories. (example: /usr/share/pixmaps)

missing_icon => STRING
- When an icon is not found, use this icon instead.

VERSION => NUMBER (default: 0.54)
- Version of obmenu-generator.

=cut

# For regular expressions
#    * is better to use qr/REGEX/ instead of 'REGEX'

# NOTE: Once an icon is found, it will *NOT* be replaced by another.

our $CONFIG = {
  categories_case_sensitive => 0,
  clean_command_name_re     => undef,
  desktop_files_paths       => ["/usr/share/applications"],
  editor                    => "leafpad",
  gtk_rc_filename           => undef,
  icon_dirs_first           => [],
  icon_dirs_last            => ["/usr/share/icons/gnome"],
  icon_dirs_second          => [],
  missing_icon              => "gtk-missing-image",
  skip_app_command_re       => undef,
  skip_app_name_re          => undef,
  skip_file_content_re      => undef,
  skip_file_name_re         => undef,
  skip_svg_icons            => 1,
  terminal                  => "lxterminal",
  use_only_my_icon_dirs     => 0,
  VERSION                   => 0.54,
  wine_desktop_files_paths  => ["/home/archstrike/.local/share/applications/wine"],
  wine_skip_exec_re         => undef,
  wine_skip_name_re         => qr/^(?:Uninstall|Readme|Help|Visit|Register|Technical Support)\b/i,
}
