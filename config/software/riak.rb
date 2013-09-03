name "riak"
version "1.2.1"

dependency "erlang"
dependency "rsync"

source :url => "http://s3.amazonaws.com/downloads.basho.com/riak/1.2/1.2.1/riak-1.2.1.tar.gz",
       :md5 => "0d7ccaa18d2e5805230c0d9486683253"

relative_path "riak-1.2.1"

build do
  build_env = {
    "PATH" => "/#{install_dir}/embedded/bin:#{ENV['PATH']}",
    "LDFLAGS" => "-L/#{install_dir}/embedded/lib -I#{install_dir}/embedded/include -I#{install_dir}/embedded/erlang/include",
    "LD_RUN_PATH" => "#{install_dir}/embedded/lib",
    "CFLAGS" => "-L#{install_dir}/embedded/lib -I#{install_dir}/embedded/include/ -I#{install_dir}/embedded/erlang/include/",
    "CXXFLAGS" => "-L#{install_dir}/embedded/lib -I#{install_dir}/embedded/include/ -I#{install_dir}/embedded/erlang/include/",
    "SNAPPY_CFLAGS" => "-L#{install_dir}/embedded/lib -I#{install_dir}/embedded/include/ -I#{install_dir}/embedded/erlang/include/"
  }
  command "make rel", :env => build_env
  command "#{install_dir}/embedded/bin/rsync -a rel/riak/ #{install_dir}/", :env => build_env
end
