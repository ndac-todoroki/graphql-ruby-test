class Types::MutationType < Types::BaseObject
  # TODO: remove me
  field :test_field, String,
        null: false,
        description: 'An example field added by the generator'

  field :add_foo, mutation: Mutations::AddFoo

  def test_field
    %w[one two].map do |msg|
      GraphQL::ExecutionError.new(msg)
    end
  end
end
