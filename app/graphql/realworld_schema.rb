class RealworldSchema < GraphQL::Schema
  #### introspectionをブロック
  #disable_introspection_entry_points

  #### timeout
  #use GraphQL::Schema::Timeout, max_seconds: 3

  #### 最大の複雑性
  #max_complexity 100

  #### 最大の深さ
  #max_depth 10

  use GraphQL::Batch
  #use GraphQL::Tracing::NewRelicTracing, set_transaction_name: true

  mutation(Types::MutationType)
  query(Types::QueryType)
end
