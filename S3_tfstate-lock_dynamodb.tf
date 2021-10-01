resource "aws_dynamodb_table" "tfstate_lock" {
  name = var.tfstate_lock_name
  read_capacity  = 1
  write_capacity = 1
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S" # Attribute type, which must be a scalar type: (S)tring, (N)umber or (B)inary data
  }

}
