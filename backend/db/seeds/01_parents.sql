INSERT INTO parents(
  id,
  first_name,
  last_name,
  ewallet_account_number,
  ewallet_password,
  bank_account_number,
  active,
  street_number,
  street,
  city,
  postal_code,
  phone_number,
  email,
  money_request,
  children_list,
  transaction_list,
  text_color,
  background_color,
  header_color,
  created_at,
  updated_at
)

VALUES(
  1, 
  'jane',
  'toaster',
  'ewallet account',
  'ewallet passsword',
  'bank account number',
  true,
  1,
  'street',
  'city',
  'postal_code',
  'this is a number',
  'this is email',
  ARRAY ['{"store": "www.sephora.1"}'],
  ARRAY ['{"store": "www.sephora.2"}'],
  ARRAY ['{"store": "www.sephora.3"}'],
  'text_color_blue',
  'bg_color',
  'header color',  
  '2021-10-18',
  '2021-10-19'
  );
  