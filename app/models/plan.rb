class Plan < ApplicationRecord
    validates :name, presence: true, length: { maximum: 20 }
    validates :start_day, presence: true
    validates :end_day, presence: true
    validates :memo, length: { maximum: 500 }
    validate :end_after_start

    
    def start_day_formatted
        start_day.strftime("%Y/%m/%d") if start_day
    end

    def end_day_formatted
        end_day.strftime("%Y/%m/%d") if end_day
    end

    def updated_at_formatted
        updated_at.strftime("%Y/%m/%d %H:%M") if updated_at
    end

    private

    def end_after_start
        return if start_day.blank? || end_day.blank?

        if end_day < start_day
            errors.add(:end_day, "は開始日より前にできません")
        end
    end

end