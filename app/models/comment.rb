class Comment < ActiveRecord::Base
  belongs_to :commentable, polymorphic: true

  def commentable
    if commentable_type
      commentable_type.constantize.find(commentable_id)
    end
  end
end
