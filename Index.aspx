<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Open_Book_Library.Index" %>

<!DOCTYPE html>

<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=7">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Open Library</title>
	<link rel="icon" type="image/x-icon" href="assets/bookFav.png">
	<favicon></favicon>	
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
	<link rel="stylesheet" type="text/css" href="styles.css">
</head>

<body>
	<div id="preloader"></div>
	<nav class="nav row">
		<a class="col-lg-1 col-md-2 col-sm-2"><img src="assets/Logo.png" alt="" width="100" height="90"></a>
		<p class="title1   col-lg-2 col-md-2 col-sm-10">OPEN LIBRARY</p>
		<p class="title2   col-lg-9 col-md-8 col-sm-12"></p>
	</nav>
	<br>
	<div class="container">
		<h3>Search:</h3>
		<form class="d-flex">
			<input class="form-control me-2" placeholder="Search For Authors" id="inputn" CssClass="searchbar">
			<button title="search"  class="btn btn-white" type="button" onclick="hello()"><img src="assets/Search.gif" alt=""></button>
		</form>
	</div>
	<br>
	<div class="container">
		<div class="card " id="table">
			<div class="card-header text-bg-secondary">
				<h3>Search Results</h3>
			</div>
			<div class="card-body">
				<table id="example" class="table">
					<thead class="table-dark">
						<tr>
							<th>Author ID</th>
							<th>Author Name</th>
							<th>Date of Birth</th>
							<th>Top Works</th>
							<th>Work ID</th>
						</tr>
					</thead>
				</table>
			</div>
		</div>
	</div>
	<div class="modal fade" id="my-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 >Details</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<table>
						<tr>
							<td>Author</td>
							<td id="res_name"></td>
						</tr>
						<tr>	
						<td>title</td>
						<td id="res_title"></td>
						</tr>
						<tr>
							<td>revision</td>
							<td id="res_revision"></td>
						</tr>
						<tr>
							<td>Sales Date</td>
							<td id="res_sal"></td>
						</tr>
						<tr>
							<td>id</td>
							<td id="res_id"></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>

	<br>
	<br>
	<br>
	<P class="copy">Copy Rights @2023</P>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="script.js"></script>
</body>
</html>
