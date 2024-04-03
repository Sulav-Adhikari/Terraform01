module "S3" {
    source = "../S3"
  
}

module "cloudfront" {
  depends_on = [ module.S3 ]
    source = "../cloudfront"

                             
}

module "cloudflare" {

  source      = "../cloudflare"
  domain_name = "sulav-adhikari.com.np"
  cloudfront_domain_name = module.cloudfront.cloudfront_domain


}

