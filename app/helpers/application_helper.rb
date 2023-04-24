# frozen_string_literal: true

module ApplicationHelper
  def enum_selection(enum)
    enum.map{|k,v| [k.titleize, v]}
  end
end
