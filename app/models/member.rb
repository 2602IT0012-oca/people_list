class Member < ApplicationRecord
  # 1. nameのバリデーション（空NG、1〜20文字以内、ユニーク）
  validates :name, presence: true, length: { in: 1..20 }, uniqueness: true

  # 2. heightのバリデーション（空NG、1以上、カスタムメッセージ付き）
  validates :height, presence: { message: "を入力してください" },
                     numericality: { greater_than_or_equal_to: 1, message: "は1以上の値を入力してください" }

  # 3. weightのバリデーション（空NG、1以上、カスタムメッセージ付き）
  validates :weight, presence: { message: "を入力してください" },
                     numericality: { greater_than_or_equal_to: 1, message: "は1以上の値を入力してください" }
end
