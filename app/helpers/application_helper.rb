module ApplicationHelper
  def sortable(column, title = nil)
    title ||= column.titleize
    css_class = column == sort_column ? "current #{sort_direction}" : nil
    direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
    content_tag 'div' do
      concat(link_to title, {:sort => column, :direction => direction})
      concat(content_tag 'span', "", class: css_class)
    end
  end
end
