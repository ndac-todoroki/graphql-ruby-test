class Types::QueryType < Types::BaseObject
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  # TODO: remove me
  field :test_field, String,
        null: false,
        description: 'An example field added by the generator'
  def test_field
    %w[one two three].map do |msg|
      GraphQL::ExecutionError.new(msg)
    end
  end
end
