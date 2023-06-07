# frozen_string_literal: true

module Users
  module Associations
    extend ActiveSupport::Concern

    included do
      has_one_attached :avatar
      has_attached_file :image, styles: { thumb: "64x64#", normal: "400x400>" }
    end
  end
end
