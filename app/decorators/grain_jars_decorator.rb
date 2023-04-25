class GrainJarsDecorator < Draper::Decorator
  delegate_all

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end

  def edit_link
    helpers.link_to(
      object.name,
      helpers.edit_grain_jar_path(object.id),
    )
  end

  def shaken
    return '-' if object.shaken.nil?

    object.shaken.strftime(date_format)
  end

  def retired
    return '-' if object.retired.nil?

    object.retired.strftime(date_format)
  end

  def innoculated
    return '-' if object.innoculated.nil?

    object.innoculated.strftime(date_format)
  end

  def date_format
    "%m/%d"
  end

  def grain
    return '-' if object.grain.nil?

    object.grain.titleize
  end
end
