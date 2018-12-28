# frozen_string_literal: true

module Types
  class Admin < GraphQL::Schema::Object
    description "An administrator"

    field :id, ID,
          null: false,
          description: "The database ID"
    field :email, String,
          null: false,
          description: "Their email address"
    field :name, String,
          null: true,
          description: "Their full name"
    field :display_name, String,
          null: false,
          description: "The name if it's available, otherwise the email"
    field :invitation_created_at, Types::DateTime,
          null: true,
          description: "When an invitation to this admin was created"
    field :invitation_accepted_at, Types::DateTime,
          null: true,
          description: "When an invitation to this admin was accepted"
    field :current_admin, Boolean,
          null: false,
          description: "Whether this is the current admin"

    def current_admin
      context[:current_admin] == object
    end
  end
end
