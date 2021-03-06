extension Request {

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/search-explain.html
     * - parameter type: The type of the document
     * - parameter id: The document ID
     * - parameter index: The name of the index
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func explain(index: String, type: String, id: String, method: HttpMethod = .GET, body: ElasticsearchBody?) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/\(index)/\(type)/\(id)/_explain"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body?.asJson())
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/search-explain.html
     * - parameter type: The type of the document
     * - parameter id: The document ID
     * - parameter index: The name of the index
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func explain(index: String, type: String, id: String, method: HttpMethod = .GET, body: [String : Any]?) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/\(index)/\(type)/\(id)/_explain"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
    
}