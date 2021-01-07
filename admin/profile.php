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
		<link rel="stylesheet" href="../assets/plugins/simplebar/css/simplebar.css">
		<link href="../assets/plugins/select2/select2.min.css" rel="stylesheet" />
		<link id="theme" href="../assets/colors/color1.css" rel="stylesheet" type="text/css"/>
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
		<style>
			body *::-webkit-scrollbar {
				width: 20px !important;
			}
		</style>

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
									$id_admin = $_SESSION["id_admin"];
									$query = mysqli_query($conn, "SELECT * FROM admin WHERE id_admin = $id_admin");
									$dataAdmin = mysqli_fetch_assoc($query);
								?>
								<h5 class=" mb-1"><?php echo $dataAdmin['nama_admin'] ?></h5>
								<span class="text-muted app-sidebar__user-name text-sm">ADMINISTRATOR</span>
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
							<a class="side-menu__item"  href="guru.php">
							<span class="material-icons side-menu__icon text-center m-0 mr-3 p-0 pt-1">
								person_pin
							</span>
							<span class="side-menu__label">DATA GURU</span></a>
						</li>
						<li class="slide">
							<a class="side-menu__item"  href="kelas.php">
							<span class="material-icons side-menu__icon text-center m-0 mr-3 p-0 pt-1">
								class
							</span>
							<span class="side-menu__label">DATA KELAS</span></a>
						</li>
						<li class="slide">
							<a class="side-menu__item"  href="siswa.php">
							<span class="material-icons side-menu__icon text-center m-0 mr-3 p-0 pt-1">
								school
							</span>
							<span class="side-menu__label">DATA SISWA</span></a>
						</li>
						<li class="slide">
							<a class="side-menu__item"  href="matpel.php">
							<span class="material-icons side-menu__icon text-center m-0 mr-3 p-0 pt-1">
								event
							</span>
							<span class="side-menu__label">DATA MATA PELAJARAN</span></a>
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
													$id_admin = $_SESSION["id_admin"];
													$query = mysqli_query($conn, "SELECT * FROM admin WHERE id_admin = $id_admin");
													$dataAdmin = mysqli_fetch_assoc($query);
												?>
													<a href="#" class="dropdown-item text-center user pb-0 font-weight-bold"><?php echo $dataAdmin['nama_admin'] ?></a>
													<span class="text-center user-semi-title">ADMINISTRATOR</span>
													<div class="dropdown-divider"></div>
												</div>
												<a class="dropdown-item d-flex" href="profil.php">
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
						<div class="content mt-5">
						<?php 
			
						if (isset($_POST["editProfile"])) {
							
							$nip = $_POST["nip"];
							$nama = $_POST["nama"];
							$alamat = $_POST["alamat"];
							$no_hp = $_POST["no_hp"];
							$id_admin = $_SESSION["id_admin"];

							$query = "UPDATE admin SET
										nip = '$nip',
										nama_admin = '$nama',
										alamat = '$alamat',
										no_hp = '$no_hp'
										WHERE id_admin = $id_admin
										";

							mysqli_query($conn, $query);
							$berhasil = mysqli_affected_rows($conn);
							header("Location: profile.php");
							if ($berhasil > 0) {
								echo "<div class='alert alert-success' role='alert'><strong>Sukses ! </strong>Data Guru berhasil diubah di database.</div>";
							} else {
								echo "<div class='alert alert-danger' role='alert'><strong>Oh snap! </strong>Hapus Data Soal GAGAL ! Mohon periksa kembali</div>";
							}
							
						}
						
						?>
						<!-- Modal -->
						<form action="" method="POST">
							<div class="modal fade" id="exampleModal">
								<div class="modal-dialog">
									<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">EDIT PROFILE</h5>
										<button type="button" class="close" data-dismiss="modal" aria-label="Close">
										<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body">
											<?php 
												$id_admin = $_SESSION["id_admin"];
												$query = mysqli_query($conn, "SELECT * FROM admin WHERE id_admin = $id_admin");
												$dataAdmin = mysqli_fetch_assoc($query);
											?>
											<div class="form-group">
												<label for="nip">NIP</label>
												<input type="number" name="nip" id="nip" class="form-control" value="<?= $dataAdmin["nip"]; ?>">
											</div>
											<div class="form-group">
												<label for="nama">Nama</label>
												<input type="text" name="nama" id="nama" class="form-control" value="<?= $dataAdmin["nama_admin"]; ?>">
											</div>
											<div class="form-group">
												<label for="alamat">Alamat</label>
												<textarea name="alamat" id="alamat" class="form-control"><?= $dataAdmin["alamat"]; ?></textarea>
											</div>
											<div class="form-group">
												<label for="no_hp">No HP</label>
												<input type="number" name="no_hp" id="no_hp" class="form-control" value="<?= $dataAdmin["no_hp"]; ?>">
											</div>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
											<button type="submit" name="editProfile" class="btn btn-primary">Save changes</button>
										</div>
									</div>
								</div>
							</div>
						</form>
                            <div class="page-header d-flex justify-content-center">
                                <div class="page-leftheader">
                                    <h4 class="page-title mb-0">Halaman Profile</h4>
                                    <hr style="border-top: 2px solid black; width: 150px; margin: 0;">
                                </div>
                            </div>
                            <div class="row justify-content-center">
                                <div class="col-12 col-md-6">
                                    <div class="card overflow-hidden dash1-card border-0">
                                        <div class="card-body">
                                            <div class="row align-items-center">
                                                <div class="col-6">
                                                    <h4>NIP</h4>
                                                    <h4>Nama</h4>
                                                    <h4>Alamat</h4>
                                                    <h4>No HP</h4>
                                                </div>
                                                <?php 
						
													$id_admin = $_SESSION["id_admin"];
													$query = mysqli_query($conn, "SELECT * FROM admin WHERE id_admin = $id_admin");
													$dataAdmin = mysqli_fetch_assoc($query);
                                                ?>
                                                <div class="col-6">
                                                    <p>: <?php echo $dataAdmin['nip'] ?></p>
                                                    <p>: <?php echo $dataAdmin['nama_admin'] ?></p>
                                                    <p>: <?php echo $dataAdmin["alamat"] ?></p>
                                                    <p>: <?php echo $dataAdmin["no_hp"] ?></p>
                                                </div>
                                            </div>
                                            <div class="row mt-2">
                                                <div class="col-12 text-right">
                                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                                                        Edit Profile
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
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
		<script src="../assets/plugins/peitychart/jquery.peity.min.js"></script>
		<script src="../assets/plugins/peitychart/peitychart.init.js"></script>
		<script src="../assets/js/apexcharts.js"></script>
		<script src="../assets/plugins/echarts/echarts.js"></script>
		<script src="../assets/plugins/chart/chart.bundle.js"></script>
		<script src="../assets/plugins/chart/utils.js"></script>
		<script src="../assets/plugins/select2/select2.full.min.js"></script>
		<script src="../assets/js/select2.js"></script>
		<script src="../assets/plugins/moment/moment.js"></script>
		<script src="../assets/js/index1.js"></script>
		<script src="../assets/plugins/simplebar/js/simplebar.min.js"></script>
		<script src="../assets/js/custom.js"></script>

	</body>
</html>