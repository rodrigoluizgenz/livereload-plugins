require 'sass/tree/node'

module Sass::Tree
  # A dynamic node representing a Sass `@each` loop.
  #
  # @see Sass::Tree
  class EachNode < Node
    # The name of the loop variable.
    # @return [String]
    attr_reader :var

    # The parse tree for the list.
    # @param [Script::Tree::Node]
    attr_accessor :list

    # @param var [String] The name of the loop variable
    # @param list [Script::Tree::Node] The parse tree for the list
    def initialize(var, list)
      @var = var
      @list = list
      super()
    end
  end
end
