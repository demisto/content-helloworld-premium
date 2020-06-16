#!/bin/bash

tmp_dir=$(mktemp -d)
git clone git@github.com:demisto/content.git $tmp_dir

echo "Copying Hello World example from ${tmp_dir}/Packs/HelloWorldPremiumNew"
rm -rf Packs/HelloWorldPremiumNew
mv "${tmp_dir}/Packs/HelloWorld Packs"

rm -rf ${tmp_dir}
