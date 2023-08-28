<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<%@include file="head.jsp"%>
<link rel="stylesheet" href="css/main.css">
<script src="https://cdn.staticfile.org/vue/2.7.0/vue.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
</head>
<body>

	<div class="row">
		<div class="col-sm-12">
			<table class="table JQtabNew">
				<thead>
					<tr role="row">
						<th class="sorting">標題</th>
						<th class="sorting">客訴日期</th>
						<th class="sorting">執行狀態</th>
					</tr>
				</thead>
				<tbody>
					<tr id="app">
						<td>
							<p>{{ msgHead }}</p>
						</td>
						<td>
							<p>{{ msgTime }}</p>
						</td>
						<td>
							<p>{{ msgStatus }}</p>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>

</body>

<script>


		console.log('start');
	    const javaBackendUrl = '/MessageBoard/com/main/main';
	    var data = [];
	    var head = "";
	    var detail = "";
	    var userName = "";
	    var time = "";
	    var status = "";
	    
	    axios.get(javaBackendUrl)
	        .then(response => {
	        	data.push(response.data)
	        	head = data[0].head;
	        	detail = data[0].detail;
	        	userName = data[0].userName;
	        	time = data[0].time;
	        	status = data[0].status;
	        	console.log(time);
	        	new Vue({
	  			  el: '#app',
	  			  data: {
	  			    msgHead: head,
	  			    msgDetail: detail,
	  			    msgUsername: userName,
	  			    msgTime: time,
	  			    msgStatus: status,
	  			  }
	  			})
	        })
	        .catch(error => {
	            console.error('Error:', error);
	        });

		console.log('end');
		
		


</script>
</html>