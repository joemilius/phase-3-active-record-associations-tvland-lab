class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{first_name} #{last_name}"
  end

  def list_roles
    character_name = characters.pluck(:name).first
    show_name = shows.pluck(:name).first

    "#{character_name} - #{show_name}"
  end
end

