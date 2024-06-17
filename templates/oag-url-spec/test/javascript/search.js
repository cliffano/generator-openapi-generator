import assert from 'assert';
import OpenapiJsClient from 'openapi-js-client';

const api = new OpenapiJsClient.DefaultApi()

describe('google', function() {
  it('should search with the query', function(done) {
    var q = 'OpenAPI Generator web site';
    var callback = function(error, data, response) {
      if (error) {
        done(error);
      } else {
        console.log('API called successfully. Returned data: ' + data);
        done();
      }
    };
    api.search(q, callback);
  });
});
