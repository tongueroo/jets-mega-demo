Jets.application.configure do
  config.project_name = "mega"
  config.mode = "html"

  # Lazy loads ruby and gems as part of first request. Prewarming will handles
  # this. This also keeps the code package size small and allows us to use the
  # Lambda console for inline code editing.
  # config.ruby.lazy_load = true # default is true

  # config.prewarm.enable = true # default is true
  # config.prewarm.rate = '30 minutes' # default is '30 minutes'
  # config.prewarm.concurrency = 2 # default is 2
  # config.prewarm.public_ratio = 3 # default is 3

  # config.env_extra = 2 # can also set this with JETS_ENV_EXTRA
  # config.extra_autoload_paths = []

  # config.asset_base_url = 'https://cloudfront.domain.com/assets' # example

  config.cors = true # for '*''
  # config.cors = '*.mydomain.com' # for specific domain

  config.function.timeout = 30
  # config.function.role = "arn:aws:iam::#{Jets.aws.account}:role/service-role/pre-created"
  # config.function.memory_size = 1536

  config.function.environment = {
    global_app_key1: "global_app_value1",
    global_app_key2: "global_app_value2",
  }
  # More examples:
  # config.function.dead_letter_queue = { target_arn: "arn" }
  # config.function.vpc_config = {
  #   security_group_ids: [ "sg-1", "sg-2" ],
  #   subnet_ids: [ "subnet-1", "subnet-2" ]
  # }
  # The config.function settings to the CloudFormation Lambda Function properties.
  # http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html
  # Underscored format can be used for keys to make it look more ruby-ish.

  # Assets settings
  # config.assets.folders files are uploaded to s3 and are set to public-read to be served directly
  # config.assets.folders = %w[public] # defaults to public
  # config.assets.max_age = 3600 # when to expire assets
  # config.assets.cache_control = nil # IE: "public, max-age=3600" # override max_age for more fine-grain control.
  # config.assets.base_url = nil # IE: https://cloudfront.com/my/base/path, defaults to the s3 bucket url
  #                                IE: https://s3-us-west-2.amazonaws.com/demo-dev-s3bucket-1inlzkvujq8zb
end
