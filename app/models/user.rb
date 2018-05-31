class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
    def change
    create_table :users do |t|
      ##Database authenticatable
      t.string :name, null: false, unique: true
      t.string :email, null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
  end
end

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


end
