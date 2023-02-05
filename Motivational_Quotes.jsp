<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Motivational Quotes</title>
<style>
	body {
		background-color: red;
		font-family: Arial, sans-serif;
	}

	h1 {
		text-align: center;
		color: white;
	}

	.quote-box {
		background-color: white;
		width: 500px;
		margin: 50px auto;
		padding: 20px;
		text-align: center;
		box-shadow: 2px 2px 5px grey;
	}

	.quote-text {
		font-size: 20px;
		margin-top: 20px;
		color: gray;
	}

	.author {
		font-style: italic;
		margin-top: 20px;
		color: grey;
	}

	.btn {
		background-color: lightgray;
		border: none;
		padding: 10px 20px;
		border-radius: 20px;
		cursor: pointer;
		margin-top: 30px;
	}
</style>
</head>
<body>
	<h1>Motivational Quotes</h1>
	<div class="quote-box">
		<p class="quote-text">
			<%
				String[] quotes = {
					"The only way to do great work is to love what you do.",
					"Don't watch the clock; do what it does. Keep going.",
					"Believe you can and you're halfway there.",
					"Success is not final, failure is not fatal: It is the courage to continue that counts.",
					"Happiness is not something ready made. It comes from your own actions."
				};
				String[] authors = {
					"Steve Jobs",
					"Sam Levenson",
					"Theodore Roosevelt",
					"Winston Churchill",
					"Dalai Lama"
				};
				int randomIndex = (int) (Math.random() * quotes.length);
			%>
			<%=quotes[randomIndex]%>
		</p>
		<p class="author">- <%=authors[randomIndex]%></p>
		<button class="btn" onclick="window.location.reload()">Generate Another Quote</button>
	</div>
</body>
</html>
