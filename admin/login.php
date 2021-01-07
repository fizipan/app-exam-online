<?php ob_start(); session_start(); include '../koneksi.php'; ?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
	<head>
		<meta charset="UTF-8">
		<meta name='viewport' content='width=device-width, initial-scale=1.0, user-scalable=0'>
		<meta content="" name="description">
		<meta content="" name="author">
		<meta name="keywords" content=""/>
		<title>APLIKASI SIMULASI UJIAN ONLINE - SMK SATRIA JAKARTA</title>
		<link rel="icon" href="../assets/images/brand/favicon.ico" type="image/x-icon"/>
		<link href="../assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link href="../assets/css/style.css" rel="stylesheet" />
		<link href="../assets/css/dark.css" rel="stylesheet" />
		<link href="../assets/css/skin-modes.css" rel="stylesheet" />
		<link href="../assets/css/animated.css" rel="stylesheet" />
		<link href="../assets/css/icons.css" rel="stylesheet" />
		<link id="theme" href="../assets/colors/color1.css" rel="stylesheet" type="text/css"/>

	</head>

	<body class="h-100vh bg-primary">

		<div class="box">
			<div></div>
			<div></div>
			<div></div>
			<div></div>
			<div></div>
			<div></div>
			<div></div>
			<div></div>
			<div></div>
			<div></div>
		</div>

		<div class="page">
			<div class="page-content">
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<div class="">
								<div class="text-white">
									<div class="card-body">
										<h2 class="display-4 mb-2 font-weight-bold error-text text-center"><strong>Simulasi Ujian Online</strong></h2>
										<h4 class="text-white-80 mb-7 text-center">Administrator Login</h4>
										<?php 
											if(isset($_POST['login'])){
											$nip	 	= $_POST['nip'];
											$password 	= md5($_POST['password']);
											$sql 		= "select * from admin where nip='".$nip."' and password='".$password."'";
											$query 		= mysqli_query($conn, $sql) or die (mysqli_error());
											// pengecekan query valid atau tidak
											if($query){
											$row = mysqli_num_rows($query);
											$rows = mysqli_fetch_array($query);
											// jika $row > 0 atau username dan password ditemukan
											if($row > 0){
												$_SESSION['isLoggedIn']=1;
												$_SESSION['nip']=$nip;
												$_SESSION['id_admin']= $rows['id_admin'];
												$_SESSION['nama_admin']= $rows['nama_admin'];
												$_SESSION['alamat']= $rows['alamat'];
												$_SESSION['no_hp']= $rows['no_hp'];
												$id_admin = $_SESSION['id_admin'];
												header('Location: index.php');
											}else{
												echo 				
												"<div class='alert alert-danger alert-dismissable'>
												<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>
												<p align='center'>Nomor Induk Pegawai atau Password anda SALAH ! <br>silahkan ulangi kembali</p>
												</div>";
													}
												}

											}
											if(isset($sukses)) { echo $sukses; }
											if(isset($gagal)) { echo $gagal; }
										?>
										<form action="" method="post">
										<div class="row">
											<div class="col-9 d-block mx-auto">
												<div class="input-group mb-4">
													<div class="input-group-prepend">
														<div class="input-group-text">
															<i class="fe fe-user"></i>
														</div>
													</div>
													<input type="text" class="form-control" placeholder="Nomor Induk Pegawai" name="nip" required>
												</div>
												<div class="input-group mb-4">
													<div class="input-group-prepend">
														<div class="input-group-text">
															<i class="fe fe-lock"></i>
														</div>
													</div>
													<input type="password" class="form-control" placeholder="Password" name="password" required>
												</div>
												<div class="row">
													<div class="col-12">
														<button type="submit" class="btn  btn-secondary btn-block px-4" name="login">Login</button>
													</div>
												</div>
											</div>
										</div>
										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6 d-none d-md-flex align-items-center">
							<img src="../assets/images/png/login.png" alt="img">
						</div>
					</div>
				</div>
			</div>
		</div>
		<script src="../assets/js/jquery-3.5.1.min.js"></script>
		<script src="../assets/plugins/bootstrap/popper.min.js"></script>
		<script src="../assets/plugins/bootstrap/js/bootstrap.min.js"></script>
		<script src="../assets/plugins/othercharts/jquery.sparkline.min.js"></script>
		<script src="../assets/js/circle-progress.min.js"></script>
		<script src="../assets/plugins/rating/jquery.rating-stars.js"></script>
		<script src="../assets/js/custom.js"></script>

	</body>
</html>
