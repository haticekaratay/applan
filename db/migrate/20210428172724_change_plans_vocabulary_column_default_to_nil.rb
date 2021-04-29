class ChangePlansVocabularyColumnDefaultToNil < ActiveRecord::Migration[5.2]
  def change
    change_column_default(:plans, :vocabulary, nil)
  end
end
