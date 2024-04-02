module "S3" {
    source = "./modules/S3"
  
}

module "cloudfront" {
    source = "./modules/cloudfront"

                             
}

module "cloudflare" {
  source      = "./modules/cloudflare"
  domain_name = "sulav-adhikari.com.np"
  cloudfront_domain_name = module.cloudfront.cloudfront_domain


}



