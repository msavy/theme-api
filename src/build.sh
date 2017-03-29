#! /bin/bash

# Cleanup folder
rm -rf assets

# Recreate folder
mkdir -p assets

# Compile JS
uglifyjs -mc -- src/js/theme-apiman.js > assets/theme-apiman.js

# Compile Website CSS
lessc -clean-css src/less/website.less assets/theme-apiman.css
