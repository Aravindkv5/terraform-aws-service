resource "aws_cloudfront_distribution" "tf" {
  origin {
    domain_name = var.domain_name
    origin_id = local.s3_origin_id

    custom_origin_config {
      http_port = "80"
      https_port = "443"
      origin_protocol_policy = "http-only"
      origin_ssl_protocols = ["TLSv1", "TLSv1.1", "TLSv1.2"]
    }
  }

  enabled = true #enabled (Required) - Whether the distribution is enabled to accept end user requests for content.
  comment = "Cloudfront terraform"
  default_root_object = "aws.jpg"

  default_cache_behavior {
    viewer_protocol_policy = "redirect-to-https"
    compress = true
    allowed_methods = ["GET", "HEAD"]
    cached_methods = ["GET", "HEAD"]
    min_ttl                = 0
    default_ttl            = 0
    max_ttl                = 86400
    target_origin_id = local.s3_origin_id

    forwarded_values {
      query_string = false
      cookies {
        forward = "none"
      }
    }

    
  }

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

   tags = {
    Environment = "test-terraform"
  }

  viewer_certificate {
    cloudfront_default_certificate = true
    ssl_support_method = "sni-only" # vip or sni-only - Specifies how you want CloudFront to serve HTTPS requests. One of vip or sni-only. Required if you specify acm_certificate_arn or iam_certificate_id. NOTE: vip causes CloudFront to use a dedicated IP address and may incur extra charges.
  }
}