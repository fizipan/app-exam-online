<?php include "sesi.php";
include "../koneksi.php"; ?>
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
       <link href="../assets/css/sidemenu.css" rel="stylesheet">
		<link href="../assets/plugins/p-scrollbar/p-scrollbar.css" rel="stylesheet" />
		<link href="../assets/css/icons.css" rel="stylesheet" />

		<link href="../assets/plugins/forn-wizard/css/forn-wizard.css" rel="stylesheet" />
		<link href="../assets/plugins/formwizard/smart_wizard.css" rel="stylesheet">
		<link href="../assets/plugins/formwizard/smart_wizard_theme_dots.css" rel="stylesheet">
		<link id="theme" href="../assets/colors/color1.css" rel="stylesheet" type="text/css"/>
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

	</head>

	<body class="app sidebar-mini">
		<div id="global-loader" >
			<img src="../assets/images/svgs/loader.svg" alt="loader">
		</div>
		<div class="page">
			<div class="page-main">
				<aside class="app-sidebar">
					<div class="app-sidebar__logo">
						<a class="header-brand" href="index.php">
							<img src="../assets/images/logo.png" class="header-brand-img desktop-lgo">
						</a>
					</div>
					<div class="app-sidebar__user">
						<div class="dropdown user-pro-body text-center">
							<div class="user-pic">
								<img src="../assets/images/logo.png" alt="user-img" class="avatar-xl rounded-circle mb-1">
							</div>
							<div class="user-info">
							<?php 
							$id_siswa = $_SESSION["id_siswa"];
							$query = mysqli_query($conn, "SELECT * FROM siswa WHERE id_siswa = $id_siswa");
							$dataSiswa = mysqli_fetch_assoc($query);
							?>
								<h5 class=" mb-1"><?php echo $dataSiswa['nama_siswa'] ?></h5>
								<span class="text-muted app-sidebar__user-name text-sm">SISWA</span>
							</div>
						</div>
						<div class="sidebar-navs">
						</div>
					</div>
					<ul class="side-menu app-sidebar3">
						<li class="side-item side-item-category mt-4">MENU</li>
						<li class="slide">
							<a class="side-menu__item"  href="index.php">
							<span class="material-icons side-menu__icon text-center m-0 mr-3 p-0 pt-1">
								home
							</span>
							<span class="side-menu__label">BERANDA</span></a>
						</li>
						<li class="slide">
							<a class="side-menu__item"  href="matpel.php">
							<span class="material-icons side-menu__icon text-center m-0 mr-3 p-0 pt-1">
								text_snippet
							</span>
							<span class="side-menu__label">DATA UJIAN</span></a>
						</li>
						<li class="slide">
							<a class="side-menu__item"  href="nilai.php">
							<span class="material-icons side-menu__icon text-center m-0 mr-3 p-0 pt-1">
								leaderboard
							</span>
							<span class="side-menu__label">DATA NILAI</span></a>
						</li>
						<li class="slide">
							<a class="side-menu__item"  href="logout.php">
							<span class="material-icons side-menu__icon text-center m-0 mr-3 p-0 pt-1">
								exit_to_app
							</span>
							<span class="side-menu__label">LOGOUT</span></a>
						</li>
					</ul>
				</aside>
				<div class="app-content main-content">
					<div class="side-app">
						<div class="app-header header">
							<div class="container-fluid">
								<div class="d-flex">
									<a class="header-brand" href="index.php">
										<img src="../assets/images/logo.png" class="header-brand-img desktop-lgo">
									</a>
									<div class="app-sidebar__toggle" data-toggle="sidebar">
										<a class="open-toggle" href="#">
											<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-align-left header-icon mt-1"><line x1="17" y1="10" x2="3" y2="10"></line><line x1="21" y1="6" x2="3" y2="6"></line><line x1="21" y1="14" x2="3" y2="14"></line><line x1="17" y1="18" x2="3" y2="18"></line></svg>
										</a>
									</div>
									<div class="mt-1">
									</div>
									<div class="d-flex order-lg-2 ml-auto">
										<div class="dropdown   header-fullscreen" >
											<a  class="nav-link icon full-screen-link p-0"  id="fullscreen-button">
												<svg xmlns="http://www.w3.org/2000/svg" class="header-icon" width="24" height="24" viewBox="0 0 24 24"><path d="M10 4L8 4 8 8 4 8 4 10 10 10zM8 20L10 20 10 14 4 14 4 16 8 16zM20 14L14 14 14 20 16 20 16 16 20 16zM20 8L16 8 16 4 14 4 14 10 20 10z"/></svg>
											</a>
										</div>
										<div class="dropdown profile-dropdown">
											<a href="#" class="nav-link pr-0 leading-none" data-toggle="dropdown">
												<span>
													<img src="../assets/images/logo.png" alt="img" class="avatar avatar-md brround">
												</span>
											</a>
											<div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow animated">
												<div class="text-center">
												<?php 
												$id_siswa = $_SESSION["id_siswa"];
												$query = mysqli_query($conn, "SELECT * FROM siswa WHERE id_siswa = $id_siswa");
												$dataSiswa = mysqli_fetch_assoc($query);
												?>
													<a href="#" class="dropdown-item text-center user pb-0 font-weight-bold"><?php echo $dataSiswa['nama_siswa'] ?></a>
													<span class="text-center user-semi-title">SISWA</span>
													<div class="dropdown-divider"></div>
												</div>
												<a class="dropdown-item d-flex" href="profile.php">
													<svg class="header-icon mr-3" xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zM7.07 18.28c.43-.9 3.05-1.78 4.93-1.78s4.51.88 4.93 1.78C15.57 19.36 13.86 20 12 20s-3.57-.64-4.93-1.72zm11.29-1.45c-1.43-1.74-4.9-2.33-6.36-2.33s-4.93.59-6.36 2.33C4.62 15.49 4 13.82 4 12c0-4.41 3.59-8 8-8s8 3.59 8 8c0 1.82-.62 3.49-1.64 4.83zM12 6c-1.94 0-3.5 1.56-3.5 3.5S10.06 13 12 13s3.5-1.56 3.5-3.5S13.94 6 12 6zm0 5c-.83 0-1.5-.67-1.5-1.5S11.17 8 12 8s1.5.67 1.5 1.5S12.83 11 12 11z"/></svg>
													<div class="">Profil Saya</div>
												</a>
												<a class="dropdown-item d-flex" href="logout.php">
													<svg class="header-icon mr-3" xmlns="http://www.w3.org/2000/svg" enable-background="new 0 0 24 24" height="24" viewBox="0 0 24 24" width="24"><g><rect fill="none" height="24" width="24"/></g><g><path d="M11,7L9.6,8.4l2.6,2.6H2v2h10.2l-2.6,2.6L11,17l5-5L11,7z M20,19h-8v2h8c1.1,0,2-0.9,2-2V5c0-1.1-0.9-2-2-2h-8v2h8V19z"/></g></svg>
													<div class="">Logout</div>
												</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="page-header">
							<div class="page-leftheader">
							</div>
							<div class="page-rightheader">
							</div>
						</div>
				<!---		<div class="row ">
							<div class="col-md-12">
								<div class="card">
									<div class="card-header">
										<div class="card-title">
											UJIAN <?php echo $_POST['nama_mapel']; ?>
										</div>
									</div>
									<div class="card-body">
										<form action="hasil.php" method="post">
										<div id="wizard1">
											<?php
												$no=0;
												$query = mysqli_query($conn, "select * from soal where id_mapel='". $_POST['id_mapel'] ."' and tingkat_kelas='". $_SESSION['tingkat_kelas'] ."' and status='DISETUJUI' order by RAND()");
												$jumlah=mysqli_num_rows($query);
												while ($row = mysqli_fetch_array($query)) {
												$no++;
												$id=$row["id_soal"];
												$pertanyaan=$row["pertanyaan"];
												$pilihan_a=$row["pilihan1"];
												$pilihan_b=$row["pilihan2"];
												$pilihan_c=$row["pilihan3"];
												$pilihan_d=$row["pilihan4"];
											?>
											<h3></h3>
											<section>
												<h3><?php echo $row['pertanyaan']; ?></h3><br>
												<div class="form-group">
													<div class="radio">
														<input name="pilihan[<?php echo $id; ?>]" value="1" type="radio" id="Option_1<?php echo $id; ?>" checked>
														<label for="Option_1<?php echo $id; ?>"><?php echo $pilihan_a; ?></label>                    
													</div>
													<div class="radio">
														<input name="pilihan[<?php echo $id; ?>]" value="2" type="radio" id="Option_2<?php echo $id; ?>" >
														<label for="Option_2<?php echo $id; ?>"><?php echo $pilihan_b; ?></label>   
													</div>
													<div class="radio">
														<input name="pilihan[<?php echo $id; ?>]" value="3" type="radio" id="Option_3<?php echo $id; ?>" >
														<label for="Option_3<?php echo $id; ?>"><?php echo $pilihan_c; ?></label>   
													</div>
													<div class="radio">
														<input name="pilihan[<?php echo $id; ?>]" value="4" type="radio" id="Option_4<?php echo $id; ?>" >
														<label for="Option_4<?php echo $id; ?>"><?php echo $pilihan_d; ?></label>   
													</div>
												</div>
												<input type="hidden" name="id[]" value=<?php echo $id; ?>>
												<input type="hidden" name="jumlah" value=<?php echo $jumlah; ?>>
												<input type="hidden" name="id_mapel" value=<?php echo $_POST['id_mapel']; ?>>
											</section>
											<?php } ?>
										</div>
										</form>
									</div>
								</div>
							</div>
						</div> --->
						<div class="row">
							<div class="col-lg-12">
								<div class="card">
									<div class="card-header">
										<h3 class="card-title">UJIAN <?php echo $_POST['nama_mapel']; ?></h3>
									</div>
									<div class="card-body">
										<form id="form" method="post" action="hasil.php">
											<div class="list-group">
												<?php
													$no=0;
													$query = mysqli_query($conn, "select * from soal where id_mapel='". $_POST['id_mapel'] ."' and tingkat_kelas='". $_SESSION['tingkat_kelas'] ."' and status='DISETUJUI' order by RAND()");
													$jumlah=mysqli_num_rows($query);
													while ($row = mysqli_fetch_array($query)) {
													$no++;
													$id=$row["id_soal"];
													$pertanyaan=$row["pertanyaan"];
													$pilihan_a=$row["pilihan1"];
													$pilihan_b=$row["pilihan2"];
													$pilihan_c=$row["pilihan3"];
													$pilihan_d=$row["pilihan4"];
												?>
												<div class="list-group-item" data-acc-step>
													<h5 class="mb-0 d-flex" data-acc-title><span class="form-wizard-title"></span></h5>
													<div data-acc-content>
														<div class="my-3">
															<h3><?php echo $row['pertanyaan']; ?></h3><br>
															<div class="form-group">
																<div class="radio">
																	<input name="pilihan[<?php echo $id; ?>]" value="1" type="radio" id="Option_1<?php echo $id; ?>" checked>
																	<label for="Option_1<?php echo $id; ?>"><?php echo $pilihan_a; ?></label>                    
																</div>
																<div class="radio">
																	<input name="pilihan[<?php echo $id; ?>]" value="2" type="radio" id="Option_2<?php echo $id; ?>" >
																	<label for="Option_2<?php echo $id; ?>"><?php echo $pilihan_b; ?></label>   
																</div>
																<div class="radio">
																	<input name="pilihan[<?php echo $id; ?>]" value="3" type="radio" id="Option_3<?php echo $id; ?>" >
																	<label for="Option_3<?php echo $id; ?>"><?php echo $pilihan_c; ?></label>   
																</div>
																<div class="radio">
																	<input name="pilihan[<?php echo $id; ?>]" value="4" type="radio" id="Option_4<?php echo $id; ?>" >
																	<label for="Option_4<?php echo $id; ?>"><?php echo $pilihan_d; ?></label>   
																</div>
															</div>
															<input type="hidden" name="id[]" value=<?php echo $id; ?>>
															<input type="hidden" name="jumlah" value=<?php echo $jumlah; ?>>
															<input type="hidden" name="id_mapel" value=<?php echo $_POST['id_mapel']; ?>>
															<input type="hidden" name="nama_mapel" value=<?php echo $_POST['nama_mapel']; ?>>
														</div>
													</div>
												</div>
												<?php } ?>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
			<footer class="footer">
				<div class="container">
					<div class="row align-items-center flex-row-reverse">
						<div class="col-md-12 col-sm-12 text-center">
							Copyright © <?php echo date('Y') ?> <a href="#">Universitas Pamulang</a>. All rights reserved.
						</div>
					</div>
				</div>
			</footer>

		</div>
		<a href="#top" id="back-to-top"><i class="fe fe-chevrons-up"></i></a>
		<script src="../assets/js/jquery-3.5.1.min.js"></script>
		<script src="../assets/plugins/bootstrap/popper.min.js"></script>
		<script src="../assets/plugins/bootstrap/js/bootstrap.min.js"></script>
		<script src="../assets/plugins/othercharts/jquery.sparkline.min.js"></script>
		<script src="../assets/js/circle-progress.min.js"></script>
		<script src="../assets/plugins/rating/jquery.rating-stars.js"></script>
		<script src="../assets/plugins/sidemenu/sidemenu.js"></script>
		<script src="../assets/plugins/p-scrollbar/p-scrollbar.js"></script>
		<script src="../assets/plugins/p-scrollbar/p-scroll1.js"></script>
		<script src="../assets/plugins/p-scrollbar/p-scroll.js"></script>
		<script src="../assets/plugins/jquery-steps/jquery.steps.min.js"></script>
		<script src="../assets/plugins/parsleyjs/parsley.min.js"></script>

		<script src="../assets/plugins/formwizard/jquery.smartWizard.js"></script>
		<script src="../assets/plugins/formwizard/fromwizard.js"></script>
		<script src="../assets/plugins/accordion-Wizard-Form/jquery.accordion-wizard.min.js"></script>
		<script src="../assets/js/form-wizard.js"></script>
		<script src="../assets/js/form-wizard2.js"></script>
		<script src="../assets/js/custom.js"></script>

	</body>
</html>