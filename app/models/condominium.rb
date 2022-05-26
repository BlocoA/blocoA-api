# frozen_string_literal: true

class Condominium < ApplicationRecord
  self.table_name = 'condominiums'

  has_many :condominium_users, dependent: :destroy
  has_many :users, through: :condominium_users

  validates :name, presence: true
end