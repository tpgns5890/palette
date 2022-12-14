<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Palette</title>
<link rel="stylesheet" href="css/styles.css?after" type="text/css">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Palette</title>
	<link rel="icon" href="image/hjjimage/favicon.png">
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="css/hjjcss/bootstrap.min.css">
	<!-- animate CSS -->
	<link rel="stylesheet" href="css/hjjcss/animate.css">
	<!-- owl carousel CSS -->
	<link rel="stylesheet" href="css/hjjcss/owl.carousel.min.css">
	<link rel="stylesheet" href="css/hjjcss/lightslider.min.css">
	<!-- font awesome CSS -->
	<link rel="stylesheet" href="css/hjjcss/all.css">
		<link rel="stylesheet" href="css/hjjcss/themify-icons.css">
	<!-- font awesome CSS -->
	<link rel="stylesheet" href="css/hjjcss/magnific-popup.css">
	<!-- style CSS -->
	<link rel="stylesheet" href="css/hjjcss/style.css">
	<script src="https://kit.fontawesome.com/0695eff491.js" crossorigin="anonymous"></script>
</head>
<body>
<!-- breadcrumb start-->
	<section class="breadcrumb breadcrumb_bg">
		<div class="container">
		<div class="row justify-content-center">
			<div class="col-lg-8">
			<div class="breadcrumb_iner">
				<div class="breadcrumb_iner_item">
				<h2>Shop</h2>
				<p>Home <span>-</span> Shop Single</p>
				</div>
			</div>
			</div>
		</div>
		</div>
	</section>
	<!-- breadcrumb start-->
	<!--================End Home Banner Area =================-->
	<div id="addProductContainer"
		style="margin-top: 50px; min-height: 1080px;">
		<div id="joinFormStart">
			<br> <br>
			<hr>
		</div>
		<div>
			<form action="upDelProduct.do" method="post"
				enctype="multipart/form-data">
				<div>
					<table id="accountTbl" style="text-align: center">
						<tr>
							<th>ProductNumber</th>
							<td><input type="text" name="productNumber" style="padding-left: 8px;"
								id="productNumber" value="${product.productNumber }" readonly></td>
						</tr>
						<tr>
							<th>CategoryCode</th>
							<td><select name="categoryCode">
									<option value="">::??????::</option>
									<option value="????????????"
										${product.getCategoryCode().equals("????????????")?'selected="selected"':''}>????????????</option>
									<option value="?????????"
										${product.getCategoryCode().equals("?????????")?'selected="selected"':''}>?????????</option>
									<option value="??????"
										${product.getCategoryCode().equals("??????")?'selected="selected"':''}>??????</option>
									<option value="??????"
										${product.getCategoryCode().equals("??????")?'selected="selected"':''}>??????</option>
									<option value="????????? ??????"
										${product.getCategoryCode().equals("????????? ??????")?'selected="selected"':''}>????????? ??????</option>
									<option value="?????????"
										${product.getCategoryCode().equals("?????????")?'selected="selected"':''}>?????????</option>
									<option value="?????? ??????"
										${product.getCategoryCode().equals("?????? ??????")?'selected="selected"':''}>?????? ??????</option>
							</select></td>
						</tr>
						<tr>
							<th>ProductName</th>
							<td><input type="text" name="productName" id="productName" style="padding-left: 8px;"
								value="${product.productName }"></td>
						</tr>
						<tr>
							<th>ProductPrice</th>
							<td><input type="number" name="productPrice" style="padding-left: 8px;"
								id="productName" value="${product.productPrice }"></td>
						</tr>
						<tr>
							<th>ProductDesc</th>
							<td width="313"><textarea name="productDesc"
									id="productDesc" rows="10" cols="50"
									style="border: 1px solid #cfcfcf; font-size: 1em; border-radius: 5px; margin-right: 10px;">${product.productDesc }</textarea></td>
						</tr>
						<tr>
							<th>Image</th>
							<td><img class="product-img" id="product-img"
								src="${product.getImage()}"
								style="width: 50px; height: 50px; margin-right: 5px; border-radius: 5px;"
								alt="..." /> <input type="file" name="image" id="image"
								value="${product.getImage() }" onchange="readURL(this);"
								style="width: 247px; padding: 10px;" accept="image/*"></td>
						</tr>
					</table>
				</div>
				<div class="accountSubmitBox" style="width: 250px;">
					<button type="submit" id="submit" name="submit"
						class="button button--rayen button--border-thin button--text-thick button--text-upper button--size-s"
						data-text="EDIT">
						<span>??????</span>
					</button>
					<button type="button" id="delete" name="delete"
						class="button button--rayen button--border-thin button--text-thick button--text-upper button--size-s"
						onclick="location.href='delProduct.do?productNumber=${product.productNumber}'"
						data-text="DELETE">
						<span>??????</span>
					</button>
					<button type="button"
						class="button button--rayen button--border-thin button--text-thick button--text-upper button--size-s"
						onclick="location.href='product.do'" data-text="BACK">
						<span>??????</span>
					</button>
				</div>
			</form>
		</div>
	</div>
	<script>
		function readURL(input) {
			// files ??? ?????? ?????? ?????? ??????.
			let fileName = input.files[0].name;
			console.log(fileName);
			// ??????????????? ????????? ??????
			if (!/\.(jpg|jpeg|png)$/i.test(fileName)) {
				alert('jpeg, jpg, png ????????? ????????? ?????????.\n\n?????? ?????? : ' + fileName);
				input.outerHTML = input.outerHTML;
				document.getElementById('product-img').src = "";
				return false;

			}
			document.getElementById('product-img').src = "";
			if (input.files && input.files[0]) {
				let reader = new FileReader();
				reader.onload = function(e) {
					document.getElementById('product-img').src = e.target.result;
				};
				reader.readAsDataURL(input.files[0]);
			} else {
				document.getElementById('product-img').src = "";
			}
		}
	</script>
</body>
</html>