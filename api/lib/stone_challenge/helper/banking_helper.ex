defmodule StoneChallenge.Helper.BankingHelper do
  def generate_account_number(user_id) do
    user_id_str = Integer.to_string(user_id)
    "197" <> String.duplicate("0", 3 - String.length(user_id_str)) <> user_id_str
  end
end
