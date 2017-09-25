<%@ page contentType="text/html; utf-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Webexp's Home</title>
	</head>
	<body>
		<script src="js/jquery-1.10.2.min.js" charset="utf-8"></script>
		<div id="app">
			用户名:<input type="text" name="username"/> <br/>
			密码: <input type="password" name="password"> <br/>
			<button type="submit" name="submit" onclick="ajaxRequest()">提交</button>
		</div>
        <br/>
        查询结果:<br/>
        <div id="result"></div>
		<script>
            function ajaxRequest() {
                $("button[name='submit']").attr("disabled", true);
                $("#result").text("正在加载数据...");
                var username = $("input[name='username']")[0].value;
                var password = $("input[name='password']")[0].value;
                $.ajax({
                    url: "webexp/search",
                    type: "post",
                    data: {"username":username, "password": password},
                    cache: false,
                    success: function (data) {
                        $("button[name='submit']").removeAttr("disabled");
                        $("#result").html(data);
                    },
                    error: function () {
                        $("button[name='submit']").removeAttr("disabled");
                        $("#result").text("加载失败!");
                    }
                });
            }
		</script>
	</body>
</html>
