resource "aws_cognito_user_pool" "pool" {
  name = "my-demo"

  password_policy {
    minimum_length                   = 8
    require_lowercase                = true
    require_numbers                  = true
    require_symbols                  = true
    require_uppercase                = true
    temporary_password_validity_days = 7
  }

  schema {
    name                     = "email"
    attribute_data_type      = "String"
    developer_only_attribute = false
    mutable                  = true
    required                 = true
    string_attribute_constraints {
      min_length = 0
      max_length = 2000
    }
  }

  schema {
    name                = "owner_status"
    attribute_data_type = "Number"
    mutable             = true
    required            = false

    number_attribute_constraints {
      min_value = null
      max_value = null
    }
  }
schema {
    name                = "new_owner_status"
    attribute_data_type = "Number"
    mutable             = true
    required            = false

    number_attribute_constraints {
      min_value = 0
      max_value = 1
    }
}

}


