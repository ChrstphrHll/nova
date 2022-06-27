class Pilot < ApplicationRecord
  belongs_to :user

  belongs_to :spark, optional: true

  has_one_attached :image
  
  validates :name, presence: true
  validates :call_sign, presence: true
  # validates :stat_sums
  # validates :bio, presence: true, length: { minimum: 10 }

  def spark
    if self.spark_id
      Spark.find(self.spark_id)
    else
      nil
    end
  end

  def get_accent
    if self.spark_id
      Spark.find(self.spark_id).name.downcase
    else
      "sparkless"
    end
  end

  private
  def stat_sums
    @stats = {sun: @pilot.sun, moon: @pilot.moon, shade: @pilot.shade}
    @stats.each { |stat, value|
      if stat > 4
        errors.add(stat, "Stat cannot exceed 4")        
      end
    }
    @total = @stats.values.reduce(0) {|sum, value| sum + value}
    if @total > 7
      @stats.keys.each{ |key| errors.add(key, "Total stats cannot exceed 7")}
    end
  end
end
