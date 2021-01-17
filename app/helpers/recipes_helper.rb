module RecipesHelper
  def format_tags(tags)
    tags&.map(&:name)&.join(", ")
  end
end
