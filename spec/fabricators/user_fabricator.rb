Fabricator(:user) do
  email { sequence(:email) { |i| "user#{i}@example.com" } }
  password "12345678"
  password_confirmation "12345678"
end
