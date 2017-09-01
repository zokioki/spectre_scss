require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'spectre_scss/version'

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

namespace :spectre_scss do
  namespace :assets do
    desc 'Update Spectre\'s assets.'
    task update: :clean do
      # version = ARGV[1] || "v#{SpectreScss::VERSION.sub(/.\d+$/, '')}"
      commit = ARGV[1] || 'HEAD'

      sh 'git clone git@github.com:trilbymedia/spectre-scss.git spectre_source'
      sh "cd spectre_source && git checkout #{commit}"
      sh 'cp -R spectre_source/scss/ vendor/assets/stylesheets/spectre/'

      File.open('vendor/assets/stylesheets/spectre.scss', 'w') do |f|
        f.write('@import "spectre/spectre.scss";')
      end

      puts "\n=*=*=*=*=*=*=*=*=*=*\n=* ASSETS UPDATED! *=\n=*=*=*=*=*=*=*=*=*=*\n"
    end

    desc 'Remove previous Spectre assets.'
    task :clean do
      sh 'rm -rf vendor'
      sh 'rm -rf spectre_source'
      sh 'mkdir -p vendor/assets/stylesheets/'
    end
  end
end
