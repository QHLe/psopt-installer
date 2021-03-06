#!/bin/bash

# scripts/download-windows.sh
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

psoptInstallerDownload()
{
    if [ ! -f $1 ]; then
        wget -O $1 --no-check-certificate $2
    fi;
}

mkdir -p .download
cd .download

psoptInstallerDownload OpenBLAS-v0.2.8-x86_64.tar.gz https://github.com/xianyi/OpenBLAS/archive/v0.2.8.tar.gz
psoptInstallerDownload Ipopt-3.11.7.tgz http://www.coin-or.org/download/source/Ipopt/Ipopt-3.11.7.tgz
psoptInstallerDownload ADOL-C-2.4.1.tgz http://www.coin-or.org/download/source/ADOL-C/ADOL-C-2.4.1.tgz
psoptInstallerDownload ColPack-1.0.9.tar.gz http://cscapes.cs.purdue.edu/download/ColPack/ColPack-1.0.9.tar.gz
psoptInstallerDownload dlfcn-win32-r19-6-mingw_i686-src.tar.xz http://lrn.no-ip.info/packages/i686-w64-mingw/dlfcn-win32/r19-6/dlfcn-win32-r19-6-mingw_i686-src.tar.xz
psoptInstallerDownload libf2c.zip http://www.netlib.org/f2c/libf2c.zip
psoptInstallerDownload Psopt3.tgz http://psopt.googlecode.com/files/Psopt3.tgz
psoptInstallerDownload patch_3.02.zip http://psopt.googlecode.com/files/patch_3.02.zip
psoptInstallerDownload UFconfig-3.6.1.tar.gz http://www.cise.ufl.edu/research/sparse/SuiteSparse_config/UFconfig-3.6.1.tar.gz
psoptInstallerDownload CXSparse-2.2.5.tar.gz http://www.cise.ufl.edu/research/sparse/CXSparse/versions/CXSparse-2.2.5.tar.gz
psoptInstallerDownload lusol.zip http://www.stanford.edu/group/SOL/software/lusol/lusol.zip
psoptInstallerDownload modern-psopt-interface.zip https://github.com/Sauermann/modern-psopt-interface/archive/master.zip
psoptInstallerDownload MUMPS_4.9.2.tar.gz http://mumps.enseeiht.fr/MUMPS_4.9.2.tar.gz
psoptInstallerDownload scotch_6.0.0_esmumps.tar.gz https://gforge.inria.fr/frs/download.php/31832/scotch_6.0.0_esmumps.tar.gz

cd ..
