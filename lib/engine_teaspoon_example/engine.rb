#require 'sprockets/railtie'
require 'browserify-rails'


module EngineTeaspoonExample
  class Engine < ::Rails::Engine
    isolate_namespace EngineTeaspoonExample

    initializer 'content.assethandling' do |_app|
      # ??


      # here you can configure the command run by browserify
      # you can add other babel plugins by installing them and including them in the array with es2015

      config.browserify_rails.commandline_options = "-t [ babelify --presets [ es2015 ] ]"
      # config.browserify_rails.commandline_options = ['-t [ babelify --presets [ es2015 ] --extensions .es6 ]']
      # this will turn on sourcemaps for development RAILS_ENV
      # config.browserify_rails.source_map_environments << 'development'
      # this tells browserify what paths/files it needs to be concerned with
      # we will just use node_modules and the browserify folder we just created
      config.browserify_rails.node_bin = EngineTeaspoonExample::Engine.root.join("node_modules/.bin")
      #unless EngineTeaspoonExample::Engine.env.production?

        config.assets.precompile += %w(spec_helper.js)

        config.browserify_rails.paths = [
          ->(p) { p.start_with?(EngineTeaspoonExample::Engine.root.join('app/assets/javascripts/engine_teaspoon_example').to_s)},
          ->(p) { p.start_with?(EngineTeaspoonExample::Engine.root.join("spec/javascripts").to_s) } # ,
          # lambda { |p| p.start_with?(Formbuilder::Engine.root.join('app/assets/javascripts/formbuilder/browserify').to_s) }
        ]
      #end
    end

  end
end
