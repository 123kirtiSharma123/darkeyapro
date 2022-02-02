@IsTest global class CallOut implements HttpCalloutMock {
    protected Integer code;
    protected String status;
    protected String bodyAsString;
    
    public CallOut(Integer code, String status, String body) {
            this.code = code;
            this.status = status;
            this.bodyAsString = body;
    }
    
    global HTTPResponse respond(HTTPRequest req) {
        HttpResponse res = new HttpResponse();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(bodyAsString);
        res.setStatusCode(code);
        res.setStatus(status);
        return res;
    } 
}