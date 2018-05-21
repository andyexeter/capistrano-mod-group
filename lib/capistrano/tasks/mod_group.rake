namespace :deploy do
    task :mod_group do
        on roles :app do
            dirs = fetch(:mod_group_directories, [])
            dirs.each do |dir|
                execute "chgrp #{fetch(:mod_group)} #{shared_path}/#{dir} && chmod g+w #{shared_path}/#{dir}"
                info "Group of #{shared_path}/#{dir} changed to #{fetch(:mod_group)} and writable bit set"
            end
        end
    end

    task :finished do
        invoke "deploy:mod_group"
    end
end

namespace :load do
    task :defaults do
        set :mod_group, 'apache'
        set :mod_group_directories, [
            'web/cache',
            'web/cache/images'
        ]
    end
end
