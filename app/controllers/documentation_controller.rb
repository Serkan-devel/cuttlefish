# frozen_string_literal: true

class DocumentationController < ApplicationController
  def index
    result = api_query
    @apps = result.data.apps
    @active_app = @apps.first
  end
end
