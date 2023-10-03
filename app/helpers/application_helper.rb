# frozen_string_literal: true

module ApplicationHelper
  def enum_selection(enum)
    enum.map{|k,v| [k.titleize, k]}
  end
end
