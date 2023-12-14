#/bin/bash

# Shell script that exports the site config and removes things that shouldn't be in a
# default install.

lando drush cex -y --destination=./profiles/zlocal/radicati_install_profile/config/install
cd config/install
sed -i '/uuid/d' system.site.yml
rm core.extension.yml
rm update.settings.yml
rm editor.editor.ck5.yml
