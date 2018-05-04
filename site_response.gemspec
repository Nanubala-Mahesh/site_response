
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "site_response/version"

Gem::Specification.new do |spec|
  spec.name          = "site_response"
  spec.version       = '0.1.0'
  spec.authors       = ["mahesh_ruby_on_rails"]
  spec.email         = ["mahesh.bablu17@gmail.com"]

  spec.summary       = %q{site response}
  spec.description   = %q{Ruby gem that exposes a CLI to check the status of  WEBSITE and reports an average response time after probing the site every 10 seconds for a one minute.}
  spec.homepage      = "https://github.com/maheshbablu17/site_response"
  spec.license       = 'MIT'
  # spec.metadata    = { "source_code_uri" => "https://github.com/maheshbablu17/site_response" }

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["source_code_uri"] = "https://github.com/maheshbablu17/site_response"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # spec.files         = `git ls-files -z`.split("\x0")
  spec.files         = `git ls-files`.split("\n")


  # `git ls-files -z`.split("\x0").reject do |f|
  #   f.match(%r{^(test|spec|features)/})
  # end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| f[3..-1] }
  # spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_runtime_dependency "thor"
  spec.post_install_message = "Yay!........Thanks for installing!"
end
