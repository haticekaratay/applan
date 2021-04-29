class ChangePlansStandardColumnDefaultToNil < ActiveRecord::Migration[5.2]
  def change
    change_column_default(:plans, :standard, nil)
  end
end
