terraform {
    required_version = "=1.7.5"

    backend local {
        path ="./localstate.tfstate"    
    }

    required_providers {
      aws ={
        source = "hashicorp/aws"
        version = "=5.43.0"
      }
    }
  
}
 
provider "aws" {
    region = "us-east-1"
    shared_credentials_files = ["/home/sulav/.aws/credentials"]
    shared_config_files = ["/home/sulav/.aws/config"]

}


