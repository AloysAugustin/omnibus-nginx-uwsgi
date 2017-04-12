name 'config-files'

source path: File.expand_path('files', Omnibus::Config.project_root)

build do
    command "mkdir -p #{install_dir}/embedded/defaults"
    command "cp -rf ./* #{install_dir}/embedded/defaults/"
end
