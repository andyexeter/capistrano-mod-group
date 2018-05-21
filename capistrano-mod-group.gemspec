# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'capistrano-mod-group'
  spec.version       = '0.1.3'
  spec.authors       = ['Andy Palmer']
  spec.email         = ['andy@andypalmer.me']
  spec.description   = %q{Change group of shared files/folders and add group writable bit}
  spec.summary       = %q{Change group of shared files/folders and add group writable bit}
  spec.homepage      = 'https://github.com/andyexeter/capistrano-mod-group'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'capistrano', '~> 3.0', '>= 3.0.0'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake', '~> 0'
end
