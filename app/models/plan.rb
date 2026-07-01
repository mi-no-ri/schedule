class Plan < ApplicationRecord
    validates :name, presence: true, length: { maximum: 20 }
    validates :start_day, presence: true
    validates :end_day, presence: true
    validates :memo, length: { maximum: 500 }
    validate :end_after_start

    private

    def end_after_start
        return if start_day.blank? || end_day.blank?

        if end_day < start_day
            errors.add(:end_day, "は開始日より前にできません")
        end
    end
end