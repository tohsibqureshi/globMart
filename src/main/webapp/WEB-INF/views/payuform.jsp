<%@ page import="java.util.*" %>
<%@ page import="java.security.*" %>

<%!
public boolean empty(String s)
	{
		if(s== null || s.trim().equals(""))
			return true;
		else
			return false;
	}
%>
<%!
	public String hashCal(String type,String str){
		byte[] hashseq=str.getBytes();
		StringBuffer hexString = new StringBuffer();
		try{
		MessageDigest algorithm = MessageDigest.getInstance(type);
		algorithm.reset();
		algorithm.update(hashseq);
		byte messageDigest[] = algorithm.digest();
            
		

		for (int i=0;i<messageDigest.length;i++) {
			String hex=Integer.toHexString(0xFF & messageDigest[i]);
			if(hex.length()==1) hexString.append("0");
			hexString.append(hex);
		}
			
		}catch(NoSuchAlgorithmException nsae){ }
		
		return hexString.toString();


	}
%>
<% 	
	String merchant_key="wxIKAOFF";
	String salt="n0FBfm8JhH";
	String action1 ="";
	String base_url="https://sandboxsecure.payu.in";
	int error=0;
	String hashString="";
	
 

	
	Enumeration paramNames = request.getParameterNames();
	Map<String,String> params= new HashMap<String,String>();
    	while(paramNames.hasMoreElements()) 
	{
      		String paramName = (String)paramNames.nextElement();
      
      		String paramValue = request.getParameter(paramName);

		params.put(paramName,paramValue);
	}
	String txnid ="";
	if(empty(params.get("txnid"))){
		Random rand = new Random();
		String rndm = Integer.toString(rand.nextInt())+(System.currentTimeMillis() / 1000L);
		txnid=hashCal("SHA-256",rndm).substring(0,20);
	}
	else
		txnid=params.get("txnid");
        String udf2 = txnid;
	String txn="abcd";
	String hash="";
	String hashSequence = "key|txnid|amount|productinfo|firstname|email|udf1|udf2|udf3|udf4|udf5|udf6|udf7|udf8|udf9|udf10";
	if(empty(params.get("hash")) && params.size()>0)
	{
		if( empty(params.get("key"))
			|| empty(params.get("txnid"))
			|| empty(params.get("amount"))
			|| empty(params.get("firstname"))
			|| empty(params.get("email"))
			|| empty(params.get("phone"))
			|| empty(params.get("productinfo"))
			|| empty(params.get("surl"))
			|| empty(params.get("furl"))
			|| empty(params.get("service_provider"))
	)
			
			error=1;
		else{
			String[] hashVarSeq=hashSequence.split("\\|");
			
			for(String part : hashVarSeq)
			{
				hashString= (empty(params.get(part)))?hashString.concat(""):hashString.concat(params.get(part));
				hashString=hashString.concat("|");
			}
			hashString=hashString.concat(salt);
			

			 hash=hashCal("SHA-512",hashString);
			action1=base_url.concat("/_payment");
		}
	}
	else if(!empty(params.get("hash")))
	{
		hash=params.get("hash");
		action1=base_url.concat("/_payment");
	}
		

%>
<html>

<script>
var hash='<%= hash %>';
function submitPayuForm() {
	
	if (hash == '')
		return;

      var payuForm = document.forms.payuForm;
      payuForm.submit();
    }
</script>

<body onload="submitPayuForm();">
 

<form action="<%= action1 %>" method="post" name="payuForm">
<input type="hidden" name="key" value="<%= merchant_key %>" />
      <input type="hidden" name="hash" value="<%= hash %>"/>
      <input type="hidden" name="txnid" value="<%= txnid %>" />
      <input type="hidden" name="udf2" value="<%= txnid %>" />
	  <input type="hidden" name="service_provider" value="payu_paisa" />
      
      
      <table>
        <tr>
          <td><b>Mandatory Parameters</b></td>
        </tr>
        <tr>
          <td>Amount: </td>
          <td><input name="amount" value="${cartTotal}" readonly="readonly"/></td>
          <td>Full Name: </td>
          <td><input name="firstname" id="firstname" value="${user.fullname}" readonly="readonly"/></td>
        </tr>
        <tr>
          <td>Email: </td>
          <td><input name="email" id="email" value="${user.email}" readonly="readonly"/></td>
          <td>Phone: </td>
          <td><input name="phone" value="${user.phone}" readonly="readonly"/></td>
        </tr>
        
        <tr>
          <td>Product Info: </td>
                        <c:forEach items="${cartItem}" var="cat">
          
          <tr><td></td><td colspan="3"><input name="productinfo" value="${cat.name}" size="64" readonly="readonly"/></td></tr>
        
       </c:forEach></tr>
        <tr>
          <td> </td>
          <td colspan="3"><input name="surl" value="http://localhost:8080/success" style="display: none" size="64" /></td>
        </tr>
        <tr>
          <td> </td>
          <td colspan="3"><input name="furl" value="http://localhost:8080/failure" style="display: none" size="64" /></td>
        </tr>
        <tr>
          <td><b></b></td>
        </tr>
        <tr>
          <td> </td>
          <td><input name="lastname" id="lastname" style="display: none" value="<%= (empty(params.get("lastname"))) ? "" : params.get("lastname") %>" /></td>
          <td> </td>
          <td><input name="curl" value="" style="display: none"/></td>
        </tr>
        <tr>
          <td></td>
          <td><input name="address1" style="display: none" value="<%= (empty(params.get("address1"))) ? "" : params.get("address1") %>" /></td>
          <td></td>
          <td><input name="address2" style="display: none" value="<%= (empty(params.get("address2"))) ? "" : params.get("address2") %>" /></td>
        </tr>
        <tr>
          <td> </td>
          <td><input name="city" style="display: none" value="<%= (empty(params.get("city"))) ? "" : params.get("city") %>" /></td>
          <td> </td>
          <td><input name="state" style="display: none" value="<%= (empty(params.get("state"))) ? "" : params.get("state") %>" /></td>
        </tr>
        <tr>
          <td></td>
          <td><input name="country" style="display: none" value="<%= (empty(params.get("country"))) ? "" : params.get("country") %>" /></td>
          <td> </td>
          <td><input name="zipcode" style="display: none" value="<%= (empty(params.get("zipcode"))) ? "" : params.get("zipcode") %>" /></td>
        </tr>
        <tr>
          <td> </td>
          <td><input name="udf1" style="display: none" value="<%= (empty(params.get("udf1"))) ? "" : params.get("udf1") %>" /></td>
          
        <tr>
          <td> </td>
          <td><input name="udf3" style="display: none" value="<%= (empty(params.get("udf3"))) ? "" : params.get("udf3") %>" /></td>
          <td> </td>
          <td><input name="udf4" style="display: none" value="<%= (empty(params.get("udf4"))) ? "" : params.get("udf4") %>" /></td>
        </tr>
        <tr>
          <td> </td>
          <td><input name="udf5" style="display: none" value="<%= (empty(params.get("udf5"))) ? "" : params.get("udf5") %>" /></td>
          <td> </td>
          <td><input name="pg" value="<%= (empty(params.get("pg"))) ? "" : params.get("pg") %>" style="display: none"/></td>
        </tr>
        <tr>
          <% if(empty(hash)){ %>
            <td colspan="4"><input type="submit" value="Submit" /></td>
          <% } %>
        </tr>
      </table>
    </form>


</body>
</html>