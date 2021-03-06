#
# Copyright 2017 YOUR NAME
#
# All Rights Reserved.
#

name "nginx-uwsgi"
maintainer "CHANGE ME"
homepage "https://CHANGE-ME.com"

# Defaults to C:/nginx-uwsgi on Windows
# and /opt/nginx-uwsgi on all other platforms
install_dir "#{default_root}/#{name}"

build_version Omnibus::BuildVersion.semver
build_iteration 1

# Creates required build directories
dependency "prepare"

# nginx-uwsgi dependencies/components
dependency "git"
dependency "nginx"
dependency "uwsgi"
dependency "supervisor"

dependency "config-files"

# Version manifest file
dependency "version-manifest"

exclude "**/.git"
exclude "**/bundler/git"
