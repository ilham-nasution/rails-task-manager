# frozen_string_literal: true

json.array! @tasks do |task|
  json.extract! task, :id, :title, :details, :completed
end
