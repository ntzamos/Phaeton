class Comment < ActiveRecord::Base

  include ActsAsCommentable::Comment

  belongs_to :commentable, :polymorphic => true
  validates_length_of     :title, :within => 1..50
  validates_length_of     :comment, :within => 1..5000

  default_scope :order => 'created_at DESC'

  # NOTE: install the acts_as_votable plugin if you
  # want user to vote on the quality of comments.
  #acts_as_voteable

  # NOTE: Comments belong to a user
  belongs_to :user
end
