require File.join(Gem.loaded_specs['railties'].full_gem_path, 'lib/rails/generators/rails/scaffold/scaffold_generator.rb')

module Rails
  module Generators
    # Controlador para scaffold
    class ScaffoldGenerator
      def initialize(args, *options)
        raise StandardError, 'El uso del scaffold está prohibido en este proyecto.'
      end

    end
  end
end
