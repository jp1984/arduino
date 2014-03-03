class User < ActiveRecord::Base
  attr_accessor :password, :password_confirmation

  before_save :encrypt_password

  validate :check_password
  validates_uniqueness_of :name

  validates :password, :name, :password_confirmation, presence: true

  def check_password
    errors.add(:password, "No coincide") unless password == password_confirmation
  end

  def encrypt_password
    self.encrypted_password = password
  end
end
