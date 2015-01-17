class BonusDrink
  def self.total_count_for(amount)
    if amount - 3 >= 0
      3 + total_count_for(amount - 3 + 1)
    else
      amount
    end
  end
end
