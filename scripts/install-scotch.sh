#!/bin/bash

# scripts/install-scotch.sh
# This file is part of Psopt Installer.
#
# Psopt Installer is free software: you can redistribute it and/or
# modify it under the terms of the GNU General Public License as
# published by the Free Software Foundation, either version 3 of the
# License, or (at your option) any later version.
#
# Psopt Installer is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with Psopt Installer.  If not, see
# <http://www.gnu.org/licenses/>.

cd .packages
if [ ! -d scotch_6.0.0_esmumps ]; then
    tar xzvf ../.download/scotch_6.0.0_esmumps.tar.gz
    cd scotch_6.0.0_esmumps
    patch -p1 < $PSOPT_BUILD_DIR/patches/scotch-mingw-64.patch
    cd src
    make esmumps
    cd ../..
fi
cd scotch_6.0.0_esmumps
cp include/scotch.h $PSOPT_BUILD_DIR/.target/include
cp lib/*.a $PSOPT_BUILD_DIR/.target/lib
cd ../..
