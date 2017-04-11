name 'libexpat'
default_version '2.2.0'

source url: "https://netcologne.dl.sourceforge.net/project/expat/expat/#{version}/expat-#{version}.tar.bz2"

version '2.2.0' do
    source md5: '2f47841c829facb346eb6e3fab5212e2'
end

relative_path "expat-#{version}"

build do
    env = with_standard_compiler_flags(with_embedded_path)

    command "./configure" \
            " --prefix=#{install_dir}/embedded", env: env

    make "-j #{workers}", env: env
    make 'install', env: env
end
