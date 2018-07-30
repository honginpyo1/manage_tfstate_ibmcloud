terraform {
  backend "http" {
    # Serverless backend endpoint
    # Optional query parameters:
    # env: name for the terraform state, e.g mystate, us/south/staging (.tfstate will be added automatically)
    # versioning: set to true to keep multiple copies of the states in the storage
    address = "https://service.us.apiconnect.ibmcloud.com/gws/apigateway/api/51d6588f81848f72229cf41f8d4808d91fa34eefd5f542f668e0c767edd4/terraform/1/backend?env=ipstate&versioning=true"

    # Uncomment to enable locking. Set to same value as address
    lock_address   = "https://service.us.apiconnect.ibmcloud.com/gws/apigateway/api/51d6588f81848f72229cf41f8d4808d91fa34eefd5f542f668e0c767edd4/terraform/1/backend?env=ipstate&versioning=true"
    unlock_address = "https://service.us.apiconnect.ibmcloud.com/gws/apigateway/api/51d6588f81848f72229cf41f8d4808d91fa34eefd5f542f668e0c767edd4/terraform/1/backend?env=ipstate&versioning=true"

    # API Key for Cloud Object Storage
    password = "abcd-efgh-ijkl-mnop"

    # Do not change the following
    username               = "cos"
    update_method          = "POST"
    lock_method            = "PUT"
    unlock_method          = "DELETE"
    skip_cert_verification = "false"
  }
}
