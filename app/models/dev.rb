class Dev < ActiveRecord::Base
  has_many :freebies
  has_many :companies, through: :freebies

  def received_one?(item_name)
    self.freebies.include? do |freebie|
      freebie.item_name == item_name
    end
  end

  def give_away(dev, freebie)
    if freebie.dev_id == self.id
      freebie.update(dev_id: dev.id)
    else nil
    end
  end
end

