
name "riak"
maintainer "CHANGE ME"
homepage "CHANGEME.com"

replaces        "riak"
install_path    "/opt/riak"
build_version   '1.2.1'
build_iteration 1

# creates required build directories
dependency "preparation"
dependency "rsync"
dependency "zlib"
dependency "openssl"
dependency "runit"
dependency "erlang"
dependency "riak"
dependency "version-manifest"

exclude "\.git*"
exclude "bundler\/git"
