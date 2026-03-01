function fn() {

  var env = karate.env || 'qa';

  var config = {
    env: env,
    baseUrl: ''
  };

  if (env == 'qa') {
    config.baseUrl = 'https://reqres.in/api';
  }

  if (env == 'dev') {
    config.baseUrl = 'https://reqres.in/api';
  }

  return config;
}