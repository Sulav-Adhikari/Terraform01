module "S3" {
    source = "git@github.com:Sulav-Adhikari/Terraform01.git//modules/S3"
  
}

module "cloudfront" {
  depends_on = [ module.S3 ]
    source = "git@github.com:Sulav-Adhikari/Terraform01.git//modules/cloudfront"

                             
}

module "cloudflare" {

  source      = "git@github.com:Sulav-Adhikari/Terraform01.git//modules/cloudflare"
  domain_name = "sulav-adhikari.com.np"
  cloudfront_domain_name = module.cloudfront.cloudfront_domain


}



