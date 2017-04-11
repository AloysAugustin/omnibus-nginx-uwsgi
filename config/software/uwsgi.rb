name 'uwsgi'
default_version '2.0.15'

dependency 'pip'
dependency 'libexpat'

build do
    env = with_standard_compiler_flags(with_embedded_path)
    command "#{install_dir}/embedded/bin/pip install uwsgi==#{version}", env: env
end


