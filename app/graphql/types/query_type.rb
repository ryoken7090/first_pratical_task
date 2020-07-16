Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  # TODO: remove me
  field :testField, types.String do
    description "An example field added by the generator"
    resolve ->(obj, args, ctx) {
      "Hello World!"
    }
  end

  # field :blog, !Type::BlogType do
  #   resolve ->(_obj, _args, ctx) {
  #     # ctx[:blog]
  #     Blog.last
  #   }
  # end
  field :blog, Types::BlogType,
     resolve: ->(obj, args, ctx) {
       Blog.last
     }
end
