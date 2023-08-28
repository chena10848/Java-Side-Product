<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>使用者客訴系統</title>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<link rel="stylesheet" href="css/login.css">
<script src="https://cdn.staticfile.org/vue/2.7.0/vue.min.js"></script>
<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js">
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body class="text-center">
    <main class="form-signin">
        <img class="mb-4" src="img/logo.png" alt="" >
        <h1 class="h3 mb-3 fw-normal">使用者客訴系統</h1>
        
        <div class="form-floating" style="padding-top: 1px;text-align: left;">
            <label for="floatingInput">帳號</label>
            <input type="text" class="form-control" id="floatingInput" placeholder="account">
        </div>

        <div class="form-floating" style="padding-top: 10px;text-align: left;">
            <label for="floatingPassword">密碼</label>
            <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
        </div>
       <div class="checkbox mb-3">
       </div>
       <button class="w-100 btn btn-lg btn-primary" id="login" onclick=loginCheck()>登入</button>
        <p class="mt-5 mb-3 text-muted">2023  Chen</p>
    </main>
</body>

<script>

	function loginCheck(){
		console.log('start');
	    const javaBackendUrl = '/MessageBoard/com/login/login';
	    axios.get(javaBackendUrl)
	        .then(response => {
	            console.log('Response from Java backend:', response.data);
	        })
	        .catch(error => {
	            console.error('Error:', error);
	        });

		console.log('end');
	}

</script>

</html>