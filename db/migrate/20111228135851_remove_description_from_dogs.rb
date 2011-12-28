class RemoveDescriptionFromDogs < ActiveRecord::Migration
  def up
    remove_column :dogs, :description
  end

  def down
    add_column :dogs, :description, :string
  end
end
