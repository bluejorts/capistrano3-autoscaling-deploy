# encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/autoscaling_deploy/version'

Gem::Specification.new do |spec|
  spec.name          = 'capistrano2-autoscaling-deploy-backport'
  spec.version       = Capistrano::AutoScalingDeploy::VERSION
  spec.authors       = ['Marcos Chicote', 'Austin Paxton']
  spec.email         = ['austin.is.paxton@gmail.com']
  spec.summary       = %q{Deploy to AWS Auto Scaling group.}
  spec.description   = %q{Get all instances in an AutoScaling group by AutoScaling EC2 Tag and depoy.}
  spec.homepage      = 'https://github.com/bluejorts/capistrano2-autoscaling-deploy-backport'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'aws-sdk', '~> 3'
  spec.add_dependency 'capistrano', '~> 2'
  spec.add_dependency 'capistrano-bundler', '~> 1.2.0'
  spec.add_development_dependency 'bundler', '~> 1.17'
  spec.add_development_dependency 'rake'
end
