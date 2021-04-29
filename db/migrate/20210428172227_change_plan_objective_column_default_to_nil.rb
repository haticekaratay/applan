class ChangePlanObjectiveColumnDefaultToNil < ActiveRecord::Migration[5.2]
  def change
    change_column_default(:plans, :objective, nil)
  end
end
