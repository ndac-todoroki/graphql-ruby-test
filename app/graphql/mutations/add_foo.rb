# frozen_string_literal: true

module Mutations
  class AddFoo < GraphQL::Schema::RelayClassicMutation
    field :foo, String,
          null: false,
          description: 'Adds new foo and returns it.'

    def resolve
      %w(one two three).map do |msg|
        GraphQL::ExecutionError.new(msg)
      end
    end
  end
end
