#1.JSTL Core <x:if> Tag
The < x:if > tag is used for testing the condition and it display the body content, if the expression evaluated is true.

It is a simple conditional tag which is used for evaluating the body content, if the supplied condition is true.
    <x:set var="income" scope="session" value="${4000*4}"/>
    <x:if test="${income > 8000}">
        <p>My income is: <c:out value="${income}"/><p>
    </x:if>
#2.JSTL Core <c:choose>, <c:when>, <c:otherwise> Tag
        The < c:choose > tag is a conditional tag that establish a context for mutually exclusive conditional operations. It works like a Java switch statement in which we choose between a numbers of alternatives.

        The <c:when > is subtag of <choose > that will include its body if the condition evaluated be 'true'.

            The < c:otherwise > is also subtag of < choose > it follows &l;twhen > tags and runs only if all the prior condition evaluated is 'false'.

            The c:when and c:otherwise works like if-else statement. But it must be placed inside c:choose tag.
            <c:set var="income" scope="session" value="${4000*4}"/>
            <p>Your income is : <c:out value="${income}"/></p>
       EXAMPLE 1.     <c:choose>
                <x:when test="${income <= 1000}">
                    Income is not good.
                </x:when>
                <x:when test="${income > 10000}">
                    Income is very good.
                </x:when>
                <x:otherwise>
                    Income is undetermined...
                </x:otherwise>
            </c:choose>
       EXAMPLE 2.
            <h1>JSTL c:when, c:otherwise, c:choose</h1>

            <x:set value="10" var="num"></x:set>
            <x:choose>
                <x:when test="${num%2==0}">
                    <c:out value="${num} is even number"></c:out>
                </x:when>
                <x:otherwise>
                    <c:out value="${num} is odd number"></c:out>
                </x:otherwise>
            </x:choose>
#3.JSTL Core <c:forEach> Tag
                The <c:for each > is an iteration tag used for repeating the nested body content for fixed number of times or over the collection.

                    These tag used as a good alternative for embedding a Java while, do-while, or for loop via a scriptlet.
                    The < c:for each > tag is most commonly used tag because it iterates over a collection of object.
                    <x:forEach var="j" begin="1" end="3">
                        Item <c:out value="${j}"/><p>
                    </x:forEach>
#4.JSTL Core <c:forTokens> Tag
                        The < c:forTokens > tag iterates over tokens which is separated by the supplied delimeters.
                        It is used for break a string into tokens and iterate through each of the tokens to generate output.

                        This tag has similar attributes as < c:forEach > tag except one additional attributes delims which
                        is used for specifying the characters to be used as delimiters.
                        <x:forTokens items="Arumadura-Kulesh-Alex" delims="-" var="name">
                            <c:out value="${name}"/><p>
                        </x:forTokens>
 #5.The < c:param > tag add the parameter in a containing 'import' tag's URL.
 It allow the proper URL request parameter to be specified within URL and it automatically perform any necessary URL encoding.
 Inside < c:param > tag, the value attribute indicates the parameter value and name attribute indicates the parameter name.
                        <x:url value="/new.jsp" var="completeURL">
                        <x:param name="trackingId" value="786"/>
                        <x:param name="user" value="Kulesh"/>
                    </x:url>
                    ${completeURL}
#6.JSTL Core <c:redirect> Tag
 The < c:redirect > tag redirects the browser to a new URL. It supports the context-relative URLs, and the < c:param > tag.
 It is used for redirecting the browser to an alternate URL by using automatic URL rewriting.

                        <x:set var="url" value="0" scope="request"/>
                        <x:if test="${url<1}">
                            <c:redirect url="http://google.com"/>
                        </x:if>
                        <x:if test="${url>1}">
                            <c:redirect url="http://youtube.com"/>
                        </x:if>
 #7.JSTL Core <c:url> Tag
                            The < c:url > tag creates a URL with optional query parameter. It is used for url encoding or url formatting.
                            This tag automatically performs the URL rewriting operation.

                            The JSTL url tag is used as an alternative method of writing call
                            to the response.encodeURL() method. The advantage of url tag is proper URL encoding
                            and including the parameters specified by children. param tag.
                            <x:url value="/new.jsp"/>