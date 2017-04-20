#!/bin/bash

install_dir=$(puppet apply --configprint module_working_dir)/

find skeleton -type f | git checkout-index --stdin --force --prefix=$install_dir
find ${install_dir}/skeleton -type f -name .gitkeep -exec rm -f {} \;
