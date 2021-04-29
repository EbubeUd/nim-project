import asyncdispatch, httpclient

let client = newAsyncHttpClient()
let response = waitFor client.get("http://google.com") #compie with -d:ssl to be able to call Over Https
echo response.status
echo response.version
echo waitFor response.body