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
		<link href="../assets/plugins/datatable/css/dataTables.bootstrap4.min.css" rel="stylesheet" />
		<link href="../assets/plugins/datatable/css/buttons.bootstrap4.min.css"  rel="stylesheet">
		<link href="../assets/plugins/datatable/responsive.bootstrap4.min.css" rel="stylesheet" />
		<link href="../assets/plugins/select2/select2.min.css" rel="stylesheet" />
		<link href="../assets/colors/color1.css" rel="stylesheet" type="text/css"/>
		<link href="../assets/icontfonts/materialdesignicons/materialdesignicons.css" rel="stylesheet" type="text/css"/>
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
		<style>
			body *::-webkit-scrollbar {
				width: 15px !important;
				height: 15px;
				background-color: #C1C1C1;
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
								$id_guru = $_SESSION["id_guru"];
								$query = mysqli_query($conn, "SELECT * FROM guru INNER JOIN mapel ON guru.id_mapel = mapel.id_mapel WHERE id_guru = $id_guru");
								$dataGuru = mysqli_fetch_assoc($query);
								$query2 = mysqli_query($conn, "SELECT * FROM guru INNER JOIN mapel ON guru.id_mapel2 = mapel.id_mapel WHERE id_guru = $id_guru");
								$dataGuru2 = mysqli_fetch_assoc($query2);
								$query3 = mysqli_query($conn, "SELECT * FROM guru INNER JOIN mapel ON guru.id_mapel3 = mapel.id_mapel WHERE id_guru = $id_guru");
								$dataGuru3 = mysqli_fetch_assoc($query3);
							?>
								<h5 class=" mb-1"><?php echo $dataGuru['nama_guru'] ?></h5>
								<span class="text-muted app-sidebar__user-name text-sm"><?= $dataGuru["nama_mapel"]; ?><?= $dataGuru2["nama_mapel"] == 'TIDAK ADA' ? '' : ', ' . $dataGuru2["nama_mapel"]; ?><?= $dataGuru3["nama_mapel"] == 'TIDAK ADA' ? '' : ', ' . $dataGuru3["nama_mapel"]; ?></span>
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
							<a class="side-menu__item dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							<span class="material-icons side-menu__icon text-center m-0 mr-3 p-0 pt-1">
								assignment
							</span>
							<span class="side-menu__label">DATA SOAL</span></a>
							<div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
								<a class="dropdown-item" href="soal.php">Semual Soal</a>
								<a class="dropdown-item" href="soal-setuju.php">Soal Disetujui</a>
								<a class="dropdown-item" href="soal-review.php">Soal Direview</a>
								<a class="dropdown-item" href="soal-tolak.php">Soal Ditolak</a>
							</div>
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
													$id_guru = $_SESSION["id_guru"];
													$query = mysqli_query($conn, "SELECT * FROM guru INNER JOIN mapel ON guru.id_mapel = mapel.id_mapel WHERE id_guru = $id_guru");
													$dataGuru = mysqli_fetch_assoc($query);
													$query2 = mysqli_query($conn, "SELECT * FROM guru INNER JOIN mapel ON guru.id_mapel2 = mapel.id_mapel WHERE id_guru = $id_guru");
													$dataGuru2 = mysqli_fetch_assoc($query2);
													$query3 = mysqli_query($conn, "SELECT * FROM guru INNER JOIN mapel ON guru.id_mapel3 = mapel.id_mapel WHERE id_guru = $id_guru");
													$dataGuru3 = mysqli_fetch_assoc($query3);
												?>
													<a href="#" class="dropdown-item text-center user pb-0 font-weight-bold"><?php echo $dataGuru['nama_guru'] ?></a>
													<span class="text-center user-semi-title"><?= $dataGuru["nama_mapel"]; ?><?= $dataGuru2["nama_mapel"] == 'TIDAK ADA' ? '' : ', ' . $dataGuru2["nama_mapel"]; ?><?= $dataGuru3["nama_mapel"] == 'TIDAK ADA' ? '' : ', ' . $dataGuru3["nama_mapel"]; ?></span>
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
								<h4 class="page-title mb-0">Data Soal</h4>
							</div>
							<div class="page-rightheader">
							</div>
						</div>
						<div class="row">
							<div class="col-12">
								<div class="card">
									<div class="card-header">
										<div class="card-title"><button type="button" class="btn btn-primary" data-target="#tambah" data-toggle="modal"><i class="fe fe-plus mr-2"></i>TAMBAH DATA SOAL</button></div>
										<div class="modal" id="tambah">
											<div class="modal-dialog" role="document">
												<form action="" method="post">
												<div class="modal-content">
													<div class="modal-header">
														<h6 class="modal-title">TAMBAH DATA SOAL</h6><button aria-label="Close" class="close" data-dismiss="modal" type="button"><span aria-hidden="true">&times;</span></button>
													</div>
													<div class="modal-body">
														<div class="form-group">
															<label class="form-label">Mata Pelajaran</label>
															<?php if ($dataGuru["id_mapel2"] && $dataGuru["id_mapel3"]) : ?>
																<select name="id_mapel" id="id_mapel" class="form-control">
																	<option value="<?= $dataGuru["id_mapel"]; ?>"><?= $dataGuru["nama_mapel"]; ?></option>
																	<option value="<?= $dataGuru2["id_mapel"]; ?>" <?= $dataGuru2["id_mapel"] == 23 ? 'style="display: none;"' : $dataGuru2["id_mapel"]; ?>><?= $dataGuru2["nama_mapel"]; ?></option>
																	<option value="<?= $dataGuru3["id_mapel"]; ?>" <?= $dataGuru3["id_mapel"] == 23 ? 'style="display: none;"' : $dataGuru3["id_mapel"]; ?>><?= $dataGuru3["nama_mapel"]; ?></option>
																</select>
															<?php elseif($dataGuru["id_mapel2"]) : ?>
																<select name="id_mapel" id="id_mapel" class="form-control">
																	<option value="<?= $dataGuru["id_mapel"]; ?>"><?= $dataGuru["nama_mapel"]; ?></option>
																	<option value="<?= $dataGuru2["id_mapel"]; ?>" <?= $dataGuru2["id_mapel"] == 23 ? 'style="display: none;"' : $dataGuru2["id_mapel"]; ?>><?= $dataGuru2["nama_mapel"]; ?></option>
																</select>
															<?php elseif($dataGuru["id_mapel3"]) : ?>
																<select name="id_mapel" id="id_mapel" class="form-control">
																	<option value="<?= $dataGuru["id_mapel"]; ?>"><?= $dataGuru["nama_mapel"]; ?></option>
																	<option value="<?= $dataGuru3["id_mapel"]; ?>" <?= $dataGuru3["id_mapel"] == 23 ? 'style="display: none;"' : $dataGuru3["id_mapel"]; ?>><?= $dataGuru3["nama_mapel"]; ?></option>
																</select>
															<?php else : ?>
																<input type="text" name="id_mapel" id="id_mapel" disabled class="form-control" value="<?= $dataGuru["nama_mapel"]; ?>">
																<input type="hidden" name="id_mapel" id="id_mapel" class="form-control" value="<?= $dataGuru["id_mapel"]; ?>">
															<?php endif;?>
														</div>
														<div class="form-group">
															<label class="form-label">Tingkatan Kelas</label>
															<select name="tingkat_kelas" class="form-control" id="">
																<option value="10">10</option>
																<option value="11">11</option>
																<option value="12">12</option>
															</select>
														</div>
														<div class="form-group">
															<label class="form-label">Pertanyaan</label>
															<textarea name="pertanyaan" class="form-control" id="" cols="30" rows="3" required></textarea>
														</div>
														<div class="form-group">
															<label class="form-label">Pilihan Ganda 1</label>
															<textarea name="pilihan1" class="form-control" id="" cols="30" rows="3" required></textarea>
														</div>
														<div class="form-group">
															<label class="form-label">Pilihan Ganda 2</label>
															<textarea name="pilihan2" class="form-control" id="" cols="30" rows="3" required></textarea>
														</div>
														<div class="form-group">
															<label class="form-label">Pilihan Ganda 3</label>
															<textarea name="pilihan3" class="form-control" id="" cols="30" rows="3" required></textarea>
														</div>
														<div class="form-group">
															<label class="form-label">Pilihan Ganda 4</label>
															<textarea name="pilihan4" class="form-control" id="" cols="30" rows="3" required></textarea>
														</div>
														<div class="form-group">
															<label class="form-label">Kunci Jawaban</label>
															<select name="jawaban" class="form-control" id="">
																<option value="1">Pilihan 1</option>
																<option value="2">Pilihan 2</option>
																<option value="3">Pilihan 3</option>
																<option value="4">Pilihan 4</option>
															</select>
														</div>
													</div>
													<div class="modal-footer">
														<button class="btn btn-indigo" type="submit" name="tambah">SIMPAN</button> <button class="btn btn-secondary" data-dismiss="modal" type="button">BATALKAN</button>
													</div>
												</div>
												</form>
											</div>
										</div>
										<?php if ($dataGuru["id_mapel2"] || $dataGuru["id_mapel3"]) : ?>
										<form action="" method="POST">
											<div class="form-group d-flex align-items-center ml-5 mt-3">
												<label for="sort" class="m-0" style="width: 60px;">Sort By :</label>
												<?php if ($dataGuru["id_mapel2"] && $dataGuru["id_mapel3"]) : ?>
													<select name="sort" id="sort" class="form-control" style="width: 200px;">
														<option value="<?= $dataGuru["id_mapel"]; ?>"><?= $dataGuru["nama_mapel"]; ?></option>
														<option value="<?= $dataGuru2["id_mapel"]; ?>" <?= $dataGuru2["id_mapel"] == 23 ? 'style="display: none;"' : $dataGuru2["id_mapel"]; ?>><?= $dataGuru2["nama_mapel"]; ?></option>
														<option value="<?= $dataGuru3["id_mapel"]; ?>" <?= $dataGuru3["id_mapel"] == 23 ? 'style="display: none;"' : $dataGuru3["id_mapel"]; ?>><?= $dataGuru3["nama_mapel"]; ?></option>
													</select>
												<?php elseif($dataGuru["id_mapel2"]) : ?>
													<select name="sort" id="sort" class="form-control" style="width: 200px;">
														<option value="<?= $dataGuru["id_mapel"]; ?>"><?= $dataGuru["nama_mapel"]; ?></option>
														<option value="<?= $dataGuru2["id_mapel"]; ?>" <?= $dataGuru2["id_mapel"] == 23 ? 'style="display: none;"' : $dataGuru2["id_mapel"]; ?>><?= $dataGuru2["nama_mapel"]; ?></option>
													</select>
												<?php elseif($dataGuru["id_mapel3"]) : ?>
													<select name="sort" id="sort" class="form-control" style="width: 200px;">
														<option value="<?= $dataGuru["id_mapel"]; ?>"><?= $dataGuru["nama_mapel"]; ?></option>
														<option value="<?= $dataGuru3["id_mapel"]; ?>" <?= $dataGuru3["id_mapel"] == 23 ? 'style="display: none;"' : $dataGuru3["id_mapel"]; ?>><?= $dataGuru3["nama_mapel"]; ?></option>
													</select>
												<?php endif;?>
												<button type="submit" name="sortSubmit" class="btn btn-success ml-3">Sort</button>
											</div>
										</form>
										<?php endif; ?>
									</div>
									<?php 	
											if(isset($_POST['tambah'])){
												$id_mapel		= $_POST['id_mapel'];
												$tingkat_kelas	= $_POST['tingkat_kelas'];
												$pertanyaan		= $_POST['pertanyaan'];
												$pilihan1		= $_POST['pilihan1'];
												$pilihan2		= $_POST['pilihan2'];
												$pilihan3		= $_POST['pilihan3'];
												$pilihan4		= $_POST['pilihan4'];
												$jawaban		= $_POST['jawaban'];

												$input  		= "insert into soal (tingkat_kelas, pertanyaan, pilihan1, pilihan2, pilihan3, pilihan4, jawaban, id_guru, id_mapel, status) values ('$tingkat_kelas','$pertanyaan','$pilihan1','$pilihan2','$pilihan3','$pilihan4','$jawaban','". $_SESSION['id_guru'] ."','$id_mapel','DIREVIEW')";
												$query_input 	= mysqli_query($conn, $input);
												if($query_input) {
												$sukses 		= "<div class='alert alert-success' role='alert'><strong>Sukses ! </strong>Data Soal berhasil tersimpan di database.</div>";
												} else $gagal 	= "<div class='alert alert-danger' role='alert'><strong>Oh snap! </strong>Tambah Data Soal  GAGAL ! Mohon periksa kembali</div>".mysqli_error();
											}

											if(isset($_POST['ubah'])){
												$id_mapel		= $_POST['id_mapel'];
												$tingkat_kelas	= $_POST['tingkat_kelas'];
												$pertanyaan		= $_POST['pertanyaan'];
												$pilihan1		= $_POST['pilihan1'];
												$pilihan2		= $_POST['pilihan2'];
												$pilihan3		= $_POST['pilihan3'];
												$pilihan4		= $_POST['pilihan4'];
												$jawaban		= $_POST['jawaban'];
												$id_soal		= $_POST['id_soal'];

												$input  		= "update soal set id_mapel ='" . $id_mapel . "', tingkat_kelas ='" . $tingkat_kelas . "', pertanyaan ='" . $pertanyaan . "', pilihan1 ='" . $pilihan1 . "', pilihan2 ='" . $pilihan2 . "', pilihan3 ='" . $pilihan3 . "', pilihan4 ='" . $pilihan4 . "', jawaban ='" . $jawaban . "', status ='DIREVIEW' where id_soal ='" . $id_soal . "'";
												$query_input 	= mysqli_query($conn, $input);
												if($query_input) {
												$sukses 		= "<div class='alert alert-success' role='alert'><strong>Sukses ! </strong>Data Soal berhasil dirubah.</div>";
												} else $gagal 	= "<div class='alert alert-danger' role='alert'><strong>Oh snap! </strong>Ubah Data Soal GAGAL ! Mohon periksa kembali</div>".mysqli_error();
											}

											if(isset($_POST['hapus'])){
												$id_soal		= $_POST['id_soal'];

												$input  		= "delete from soal where id_soal ='$id_soal'";
												$query_input 	= mysqli_query($conn, $input);
												if($query_input) {
												$sukses 		= "<div class='alert alert-success' role='alert'><strong>Sukses ! </strong>Data Soal berhasil dihapus.</div>";
												} else $gagal 	= "<div class='alert alert-danger' role='alert'><strong>Oh snap! </strong>Hapus Data Soal GAGAL ! Mohon periksa kembali</div>".mysqli_error();
											}
									
											if(isset($sukses)) { echo $sukses; }
											if(isset($gagal)) { echo $gagal; } 
										?>
									<div class="card-body">
										<table class="table table-bordered table-striped" id="example1">
											<thead>
												<tr>
													<th class="wd-1p border-bottom-0 text-nowrap">No</th>
													<th class="wd-30p border-bottom-0 text-nowrap">Pembuat Soal</th>
													<th class="wd-15p border-bottom-0">Pertanyaan</th>
													<th class="wd-29p border-bottom-0 text-nowrap">Pilihan 1</th>
													<th class="wd-29p border-bottom-0 text-nowrap">Pilihan 2</th>
													<th class="wd-29p border-bottom-0 text-nowrap">Pilihan 3</th>
													<th class="wd-29p border-bottom-0 text-nowrap">Pilihan 4</th>
													<th class="wd-10p border-bottom-0 text-nowrap">Kunci Jawaban</th>
													<th class="wd-10p border-bottom-0 text-nowrap">STATUS</th>
													<th class="wd-10p border-bottom-0 text-nowrap">Mata Pelajaran</th>
													<th class="wd-30p border-bottom-0 text-nowrap">Tingkat Kelas</th>
													<th class="wd-5p border-bottom-0 text-nowrap">Aksi</th>
												</tr>
											</thead>
											<tbody>
												<?php
													$no = 0;
													$id_guru = $_SESSION["id_guru"];
													$query = mysqli_query($conn, "SELECT * FROM guru INNER JOIN mapel ON guru.id_mapel = mapel.id_mapel WHERE id_guru = $id_guru");
													$dataGuru = mysqli_fetch_assoc($query);
													$id_mapel = $dataGuru["id_mapel"];
													if (isset($_POST["sortSubmit"])) {
														$id_mapelSort = $_POST["sort"];
														$query = mysqli_query($conn, "select * from soal inner join mapel on soal.id_mapel=mapel.id_mapel inner join guru on soal.id_guru=guru.id_guru where soal.id_mapel = $id_mapelSort");
													} else {
														$query = mysqli_query($conn, "select * from soal inner join mapel on soal.id_mapel=mapel.id_mapel inner join guru on soal.id_guru=guru.id_guru where soal.id_mapel = $id_mapel");
													}
													while ($row = mysqli_fetch_array($query)) {
													$no++;
														if($row['status']=='DIREVIEW'){
															$badge = 'warning';
														} else if($row['status']=='DITOLAK'){
															$badge = 'danger';
														} else {
															$badge = 'success';
														}
															
												?>
												<tr>
													<td><?php echo $no; ?></td>
													<td><?php echo $row['nama_guru']; ?></td>
													<td><?php echo $row['pertanyaan']; ?></td>
													<td><?php echo $row['pilihan1']; ?></td>
													<td><?php echo $row['pilihan2']; ?></td>
													<td><?php echo $row['pilihan3']; ?></td>
													<td><?php echo $row['pilihan4']; ?></td>
													<td>PILIHAN <?php echo $row['jawaban']; ?></td>
													<td><span class="badge badge-<?php echo $badge; ?> side-badge"><?php echo $row['status']; ?></span></td>
													<td><?php echo $row['nama_mapel']; ?></td>
													<td>KELAS <?php echo $row['tingkat_kelas']; ?></td>
													<td>
														<div class="dropdown">
															<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
																AKSI &nbsp;<i class="fe fe-arrow-down"></i>
															</button>
															<div class="dropdown-menu">
																<a class="dropdown-item" href="javascript:void(0)" data-target="#edit<?php echo $no; ?>" data-toggle="modal">EDIT DATA</a>
																<a class="dropdown-item" href="javascript:void(0)" data-target="#hapus<?php echo $no; ?>" data-toggle="modal">HAPUS DATA</a>
															</div>
														</div>
													</td>
												</tr>
												<div class="modal" id="edit<?php echo $no; ?>">
													<div class="modal-dialog" role="document">
														<form action="" method="post">
														<div class="modal-content modal-content-demo">
															<div class="modal-header">
																<h6 class="modal-title">EDIT DATA SOAL</h6><button aria-label="Close" class="close" data-dismiss="modal" type="button"><span aria-hidden="true">&times;</span></button>
															</div>
															<div class="modal-body">
																<div class="form-group">
																	<label class="form-label">Mata Pelajaran</label>
																	<div class="row gutters-sm">
																		<div class="col">
																				<?php
																					$idSoal = $row["id_soal"];
																					$query_Mapel = mysqli_query($conn, "SELECT * FROM soal WHERE id_soal = $idSoal");
																					$dataMapel = mysqli_fetch_assoc($query_Mapel);
																				?>
																				<?php if ($dataGuru["id_mapel2"] && $dataGuru["id_mapel3"]) : ?>
																				<select name="id_mapel" id="id_mapel" class="form-control">
																					<option value="<?= $dataGuru["id_mapel"]; ?>" <?= $dataGuru["id_mapel"] == $dataMapel["id_mapel"] ? 'selected' : ''; ?>><?= $dataGuru["nama_mapel"]; ?></option>
																					<option value="<?= $dataGuru2["id_mapel"]; ?>" <?= $dataGuru2["id_mapel"] == 23 ? 'style="display: none;"' : $dataGuru2["id_mapel"]; ?> <?= $dataGuru2["id_mapel"] == $dataMapel["id_mapel"] ? 'selected' : ''; ?>><?= $dataGuru2["nama_mapel"]; ?></option>
																					<option value="<?= $dataGuru3["id_mapel"]; ?>" <?= $dataGuru3["id_mapel"] == 23 ? 'style="display: none;"' : $dataGuru3["id_mapel"]; ?> <?= $dataGuru3["id_mapel"] == $dataMapel["id_mapel"] ? 'selected' : ''; ?>><?= $dataGuru3["nama_mapel"]; ?></option>
																				</select>
																				<?php elseif($dataGuru["id_mapel2"]) : ?>
																					<select name="id_mapel" id="id_mapel" class="form-control">
																						<option value="<?= $dataGuru["id_mapel"]; ?>" <?= $dataGuru["id_mapel"] == $dataMapel["id_mapel"] ? 'selected' : ''; ?>><?= $dataGuru["nama_mapel"]; ?></option>
																						<option value="<?= $dataGuru2["id_mapel"]; ?>" <?= $dataGuru2["id_mapel"] == 23 ? 'style="display: none;"' : $dataGuru2["id_mapel"]; ?> <?= $dataGuru2["id_mapel"] == $dataMapel["id_mapel"] ? 'selected' : ''; ?>><?= $dataGuru2["nama_mapel"]; ?></option>
																					</select>
																				<?php elseif($dataGuru["id_mapel3"]) : ?>
																					<select name="id_mapel" id="id_mapel" class="form-control">
																						<option value="<?= $dataGuru["id_mapel"]; ?>" <?= $dataGuru["id_mapel"] == $dataMapel["id_mapel"] ? 'selected' : ''; ?>><?= $dataGuru["nama_mapel"]; ?></option>
																						<option value="<?= $dataGuru3["id_mapel"]; ?>" <?= $dataGuru3["id_mapel"] == 23 ? 'style="display: none;"' : $dataGuru3["id_mapel"]; ?> <?= $dataGuru3["id_mapel"] == $dataMapel["id_mapel"] ? 'selected' : ''; ?>><?= $dataGuru3["nama_mapel"]; ?></option>
																					</select>
																				<?php else : ?>
																					<input type="text" name="id_mapel" id="id_mapel" disabled class="form-control" value="<?= $dataGuru["nama_mapel"]; ?>">
																					<input type="hidden" name="id_mapel" id="id_mapel" class="form-control" value="<?= $dataGuru["id_mapel"]; ?>">
																				<?php endif;?>
																		</div>
																	</div>
																</div>
																<div class="form-group">
																	<label class="form-label">Tingkatan Kelas</label>
																	<div class="row gutters-sm">
																		<div class="col">
																			<select name="tingkat_kelas" class="form-control" id="">
																				<option value="10" <?php if($row['tingkat_kelas']=='10') echo 'selected="selected"'; ?>>10</option>
																				<option value="11" <?php if($row['tingkat_kelas']=='11') echo 'selected="selected"'; ?>>11</option>
																				<option value="12" <?php if($row['tingkat_kelas']=='12') echo 'selected="selected"'; ?>>12</option>
																			</select>
																		</div>
																	</div>
																</div>
																<div class="form-group">
																	<label class="form-label">Pertanyaan</label>
																	<div class="row gutters-sm">
																		<div class="col">
																			<textarea name="pertanyaan" class="form-control" id="" cols="30" rows="3" required><?php echo $row['pertanyaan']; ?></textarea>
																		</div>
																	</div>
																</div>
																<div class="form-group">
																	<label class="form-label">Pilihan Ganda 1</label>
																	<div class="row gutters-sm">
																		<div class="col">
																			<textarea name="pilihan1" class="form-control" id="" cols="30" rows="3" required><?php echo $row['pilihan1']; ?></textarea>
																		</div>
																	</div>
																</div>
																<div class="form-group">
																	<label class="form-label">Pilihan Ganda 2</label>
																	<div class="row gutters-sm">
																		<div class="col">
																			<textarea name="pilihan2" class="form-control" id="" cols="30" rows="3" required><?php echo $row['pilihan2']; ?></textarea>
																		</div>
																	</div>
																</div>
																<div class="form-group">
																	<label class="form-label">Pilihan Ganda 3</label>
																	<div class="row gutters-sm">
																		<div class="col">
																			<textarea name="pilihan3" class="form-control" id="" cols="30" rows="3" required><?php echo $row['pilihan3']; ?></textarea>
																		</div>
																	</div>
																</div>
																<div class="form-group">
																	<label class="form-label">Pilihan Ganda 4</label>
																	<div class="row gutters-sm">
																		<div class="col">
																			<textarea name="pilihan4" class="form-control" id="" cols="30" rows="3" required><?php echo $row['pilihan4']; ?></textarea>
																		</div>
																	</div>
																</div>
																<div class="form-group">
																	<label class="form-label">Kunci Jawaban</label>
																	<div class="row gutters-sm">
																		<div class="col">
																			<select name="jawaban" class="form-control" id="">
																				<option value="1" <?php if($row['jawaban']=='1') echo 'selected="selected"'; ?>>Pilihan 1</option>
																				<option value="2" <?php if($row['jawaban']=='2') echo 'selected="selected"'; ?>>Pilihan 2</option>
																				<option value="3" <?php if($row['jawaban']=='3') echo 'selected="selected"'; ?>>Pilihan 3</option>
																				<option value="4" <?php if($row['jawaban']=='4') echo 'selected="selected"'; ?>>Pilihan 4</option>
																			</select>
																		</div>
																	</div>
																</div>
																<input type="hidden" name="id_soal" value="<?php echo $row['id_soal']; ?>">
															</div>
															<div class="modal-footer">
																<button class="btn btn-indigo" type="submit" name="ubah">UPDATE</button> <button class="btn btn-secondary" data-dismiss="modal" type="button">BATALKAN</button>
															</div>
														</div>
														</form>
													</div>
												</div>
												<div class="modal" id="hapus<?php echo $no; ?>">
													<div class="modal-dialog" role="document">
														<form action="" method="post">
														<div class="modal-content modal-content-demo">
															<div class="modal-header">
																<h6 class="modal-title">HAPUS DATA SOAL</h6><button aria-label="Close" class="close" data-dismiss="modal" type="button"><span aria-hidden="true">&times;</span></button>
															</div>
															<div class="modal-body">
																<h5>Yakin akan menghapus data soal ini dari sistem ?</h5>
																<input type="hidden" name="id_soal" value="<?php echo $row['id_soal']; ?>">
															</div>
															<div class="modal-footer">
																<button class="btn btn-secondary" type="submit" name="hapus">HAPUS</button> <button class="btn btn-default" data-dismiss="modal" type="button">BATALKAN</button>
															</div>
														</div>
														</form>
													</div>
												</div>
												<?php } ?>
											</tbody>
										</table>
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
		<script src="../assets/plugins/datatable/js/jquery.dataTables.js"></script>
		<script src="../assets/plugins/datatable/js/dataTables.bootstrap4.js"></script>
		<script src="../assets/plugins/datatable/js/dataTables.buttons.min.js"></script>
		<script src="../assets/plugins/datatable/js/buttons.bootstrap4.min.js"></script>
		<script src="../assets/plugins/datatable/js/jszip.min.js"></script>
		<script src="../assets/plugins/datatable/js/pdfmake.min.js"></script>
		<script src="../assets/plugins/datatable/js/vfs_fonts.js"></script>
		<script src="../assets/plugins/datatable/js/buttons.html5.min.js"></script>
		<script src="../assets/plugins/datatable/js/buttons.print.min.js"></script>
		<script src="../assets/plugins/datatable/js/buttons.colVis.min.js"></script>
		<script src="../assets/plugins/datatable/dataTables.responsive.min.js"></script>
		<script src="../assets/plugins/datatable/responsive.bootstrap4.min.js"></script>
		<!-- <script src="../assets/js/datatables.js"></script> -->
		<script src="../assets/plugins/select2/select2.full.min.js"></script>
		<script src="../assets/js/custom.js"></script>
		<script>
			$(document).ready(function() {
				$('#example1').DataTable({
					scrollX: true,
				})
			})
		</script>

	</body>
</html>