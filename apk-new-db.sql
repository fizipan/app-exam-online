-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jan 2021 pada 13.41
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `riski`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nip` varchar(15) NOT NULL,
  `nama_admin` varchar(25) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `nip`, `nama_admin`, `alamat`, `no_hp`, `password`) VALUES
(1, '123456', 'Samuel Kohandi', 'JL. Adipura No. 55 Bali', '081234567890', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `id_guru` int(11) NOT NULL,
  `nip` varchar(15) NOT NULL,
  `nama_guru` varchar(50) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `id_mapel` int(11) DEFAULT NULL,
  `id_mapel2` int(11) NOT NULL DEFAULT 23,
  `id_mapel3` int(11) NOT NULL DEFAULT 23,
  `no_hp` varchar(15) NOT NULL,
  `password` varchar(32) NOT NULL,
  `id_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`id_guru`, `nip`, `nama_guru`, `alamat`, `id_mapel`, `id_mapel2`, `id_mapel3`, `no_hp`, `password`, `id_admin`) VALUES
(1, '123456', 'Vita Sundari', 'JL. Pasar Sore No. 11 Jakarta', 1, 23, 23, '081213604869', 'e10adc3949ba59abbe56e057f20f883e', 1),
(3, '123123', 'Egi Mahardi', 'JL. Nombus No. 30 Jakarta', 3, 18, 19, '0881273618', '4297f44b13955235245b2497399d7a93', 1),
(4, '101010', 'Goci Berry', 'JL. Tom Riddle No. 112 Jakarta', 6, 3, 23, '08124832747', '6d071901727aec1ba6d8e2497ef5b709', 1),
(5, '1021001', 'Drs. Zakaria, S.Pd', 'JL. MERUYA SELATAN', 9, 23, 23, '081380624396', '4912314b094243f4464bb07c09a7421b', 1),
(6, '102002', 'Drs. Sudiyono, S.Pd', 'Jl. Kapuk Pulo ', 12, 23, 23, '081380624396', '50f969511e85f394cb52ea874645966b', 1),
(7, '102003', 'Drs. H. Zaini, S.Pd', 'Jl. Kelapa Dua', 15, 23, 23, '085775688167', 'cede62a75363e246f758027c2ddea438', 1),
(8, '1021008', 'Fatimah, S.Ag', 'JL. KEMANDORAN SUKABUMI UTARA', 18, 23, 23, '081380624396', '05810e41b494ecea60fe2b4183af387e', 1),
(9, '1021012', 'Drs. Sakuri, S.Pd', 'Jl. Sumpah Pemuda', 19, 23, 23, '085778265205', 'e3c0552fbf6f8473a33f9a4059a1d516', 1),
(10, '1021014', 'Drs. H. Syamsudar, S.Pd', 'Jl. Kelapa Dua Srengseng', 20, 23, 23, '085778265205', 'ec61695b4d5da7df09629c7b2a304a0d', 1),
(11, '1021004', 'Neneng Hasanah, S.Pd', 'Kembangan Utara', 21, 23, 23, '08927671222', 'a91ea37e1e9482e5811a5f23e639de44', 1),
(12, '1021021', 'Eka Milanda, S.Pd', 'Jakarta Selatan', 12, 23, 23, '098989233', '1c22aae57cc303f902d35d8142774ccd', 1),
(13, '1021018', 'INDRIARTI AMRINARTI, S.Pd', 'Koja Utara', 20, 23, 23, '08117676221', 'e795347f61117ccad19c36f50d2318ba', 1),
(14, '1021026', 'AJI GUNAWAN, S.Kom', 'Kebon Jeruk', 1, 23, 23, '08211341216', 'cd9b1064f2297d4c5c14f2e7e4997c8d', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `tingkat_kelas` varchar(2) NOT NULL,
  `jurusan` varchar(25) NOT NULL,
  `ruang_kelas` varchar(3) NOT NULL,
  `kode_kelas` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `tingkat_kelas`, `jurusan`, `ruang_kelas`, `kode_kelas`) VALUES
(4, '10', 'AKUTANSI', '001', '01'),
(5, '11', 'ADMINISTRASI PERKANTORAN', '012', '01'),
(6, '12', 'PEMASARAN', '024', '01'),
(7, '10', 'AKUTANSI', '002', '02'),
(8, '10', 'ADMINISTRASI PERKANTORAN', '003', '01'),
(9, '10', 'ADMINISTRASI PERKANTORAN', '004', '02'),
(10, '10', 'PEMASARAN', '005', '01'),
(11, '10', 'PEMASARAN', '005', '02'),
(12, '10', 'TEKNIK KOMPUTER JARINGAN', '006', '01'),
(13, '10', 'TEKNIK KOMPUTER JARINGAN', '007', '02'),
(14, '10', 'MULTIMEDIA', '008', '01'),
(15, '10', 'MULTIMEDIA', '009', '02'),
(16, '11', 'AKUTANSI', '010', '01'),
(17, '11', 'AKUTANSI', '011', '02'),
(18, '11', 'ADMINISTRASI PERKANTORAN', '013', '02'),
(19, '11', 'PEMASARAN', '014', '01'),
(20, '11', 'PEMASARAN', '015', '02'),
(21, '11', 'TEKNIK KOMPUTER JARINGAN', '016', '01'),
(22, '11', 'TEKNIK KOMPUTER JARINGAN', '017', '02'),
(23, '11', 'MULTIMEDIA', '018', '01'),
(24, '11', 'MULTIMEDIA', '019', '02'),
(25, '12', 'AKUTANSI', '020', '01'),
(26, '12', 'AKUTANSI', '021', '02'),
(27, '12', 'ADMINISTRASI PERKANTORAN', '022', '01'),
(28, '12', 'ADMINISTRASI PERKANTORAN', '023', '02'),
(29, '12', 'PEMASARAN', '025', '02'),
(30, '12', 'TEKNIK KOMPUTER JARINGAN', '026', '01'),
(31, '12', 'TEKNIK KOMPUTER JARINGAN', '027', '02'),
(32, '12', 'PEMASARAN', '024', '01'),
(33, '12', 'MULTIMEDIA', '028', '01'),
(34, '12', 'MULTIMEDIA', '029', '02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel`
--

CREATE TABLE `mapel` (
  `id_mapel` int(11) NOT NULL,
  `jenis_mapel` varchar(10) NOT NULL,
  `nama_mapel` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mapel`
--

INSERT INTO `mapel` (`id_mapel`, `jenis_mapel`, `nama_mapel`) VALUES
(1, 'NORMATIF', 'BAHASA INDONESIA'),
(3, 'ADIPTIF', 'FISIKA'),
(6, 'NORMATIF', 'AGAMA'),
(9, 'NORMATIF', 'PENJASORKES'),
(12, 'NORMATIF', 'PKN'),
(15, 'NORMATIF', 'SENI BUDAYA'),
(18, 'ADIPTIF', 'Matematika'),
(19, 'ADIPTIF', 'IPA'),
(20, 'ADIPTIF', 'BAHASA INGGRIS'),
(21, 'ADIPTIF', 'KKPI'),
(23, 'TIDAK ADA', 'TIDAK ADA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL,
  `tanggal_ujian` date NOT NULL,
  `benar` int(11) NOT NULL,
  `salah` int(11) NOT NULL,
  `kosong` int(11) NOT NULL,
  `skor_nilai` int(11) NOT NULL,
  `keterangan` varchar(15) NOT NULL,
  `status` varchar(15) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `tanggal_ujian`, `benar`, `salah`, `kosong`, `skor_nilai`, `keterangan`, `status`, `id_siswa`, `id_mapel`) VALUES
(3, '2020-12-02', 3, 0, 0, 100, 'LULUS', 'DITERBITKAN', 1, 1),
(4, '2020-12-15', 12, 38, 0, 24, 'TIDAK LULUS', 'DIREVIEW', 8, 21),
(5, '2020-12-18', 13, 38, 0, 26, 'TIDAK LULUS', 'DITERBITKAN', 8, 1),
(6, '2020-12-18', 2, 1, 0, 67, 'LULUS', 'DIREVIEW', 118, 19),
(7, '2020-12-24', 3, 0, 0, 100, 'LULUS', 'DITERBITKAN', 209, 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `nisn` varchar(15) NOT NULL,
  `nama_siswa` varchar(25) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `password` varchar(32) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nisn`, `nama_siswa`, `alamat`, `no_hp`, `password`, `id_kelas`, `id_admin`) VALUES
(1, 'tes15004', 'tesALTHAAF FUAD HANAAN', 'Jl. Raya Srengseng RT 006/006 No.195 Srengseng Kembanga', '085775688167', '*4710CDA6530A348699CDA9AB3E7F0CA', 4, 1),
(2, '101010', 'tesMia Baskoro', 'JL. Ovulasi No. 80 Jakarta', '08787612534', '6d071901727aec1ba6d8e2497ef5b709', 5, 1),
(3, '123123', 'tesYani Majmunah', 'JL. Transisi No. 5 Jakarta', '0888721521', '4297f44b13955235245b2497399d7a93', 6, 1),
(7, '15004', 'ALTHAAF FUAD HANAAN', 'Jl. Raya Srengseng RT 006/006 No.195 Srengseng Kembangan', '085775688167', '780bc6caf343bb06a4372c0821012624', 4, 1),
(8, '15005', 'AMANDA PUTRI', 'Jl. Raya Srengseng RT 006/006 No.195 Srengseng Kembangan', '081807929747', 'f4adf97f7420b54cf83734362a8ced38', 4, 1),
(9, '15006', 'ANANDA AURELIA', 'Jl. Raya Srengseng RT 006/006 No.195 Srengseng Kembangan', '081381315583', '4a7ad6a4dfd49733209e941c61ee6524', 4, 1),
(10, '15007', 'DEA ANANDA PUTRI', 'Jl. Raya Srengseng RT 006/006 No.195 Srengseng Kembangan', '081906112471', 'ffcdeffa3829f4a633ea0b404e2b4a0a', 4, 1),
(11, '15008', 'DESI MARYATI', 'Jl. Raya Srengseng RT 006/006 No.195 Srengseng Kembanga', '083869262292', '7448bfbe44167441e18ad91ea71ed19a', 4, 1),
(12, '15009', 'DESY AZQIATUNNISA', 'Jl. Raya Srengseng RT 006/006 No.195 Srengseng Kembangan', '085893645383', '4252db6ade40e2522ac46e2e00c5655f', 4, 1),
(13, '15010', 'EFRI GUSNADI', 'Jl. Raya Srengseng RT 006/006 No.195 Srengseng Kembangan', '08811369340', '0b70b95deb2dfeeb11aa462c44169894', 4, 1),
(14, '15011', 'ELSA WULANDARI', 'Jl. Raya Srengseng RT 006/006 No.195 Srengseng Kembangan', '081291796671', '21bf78373135b9673366fae7f6ddddeb', 4, 1),
(15, '15012', 'FARID RIFAI', 'Jl. Raya Srengseng RT 006/006 No.195 Srengseng Kembangan', '085811704520', 'f8e8b1feff822753a39b21de69259fd6', 4, 1),
(16, '15013', 'FAUZIYAH', 'Jl. Raya Srengseng RT 006/006 No.195 Srengseng Kembangan', '081395819393', 'd8d3a2d972d6cb50e983baa5673ea92a', 4, 1),
(17, '15014', 'ABDI NEGARA PRATAMA', 'Jl. Palmerah Barat RT 002/008 No.25 Palmerah Palmerah', '081586320274', '2bf620c22ba6bffd71c0709ba9654212', 7, 1),
(18, '14964', 'ALAWY AHMAD', 'Jl. Persatuan RT 001/007 No.85 Sukabumi Selatan Kebon Jeruk', '085966705126', '8c741dbd9a7fa61e5da7d2d2b54d7b51', 7, 1),
(19, '14965', 'AULIA SALSABILA', 'Jl. HH RT 012/001 No.10 Kebon Jeruk Kebon Jeruk', '081411077501', '22ee64535a462675b9066169a93091c8', 7, 1),
(20, '14966', 'BINTANG SATRIA', 'Jl. Pemancingan I RT 007/005 No.81 Srengseng Kembangan', '081298815215', '996e38c65d2be92f2be1e7ba42a0be01', 7, 1),
(21, '14967', 'CAHYA AYU ARIANI', 'Jl. Adhi Karya Pintu Air RT 012/005 No.8 Kedoya Selatan Kebon Jeruk', '081296653820', '1ee8c137bb71a4bec258c2faf3cd31a7', 7, 1),
(22, '14968', 'DINDA AMELIA', 'Jl. Manunggal RT 006/007 No.9 Meruya Selatan Kembangan', '0895364661804', '91e480d943dda6147aff2bd2dc418c96', 7, 1),
(23, '14969', 'DINDA CHAIRUNISA', 'Jl. Pemancingan I RT 007/005 No.9 Srengseng Kembangan', '0895610525490', 'b0a939dc23f32d19bfc5ad11bbfaf093', 7, 1),
(24, '14970', 'DODI ARDIYANSYAH', 'Jl Ray Kelapa Dua Masjid Al-Ittihad RT 006/06 Kelapa Dua Kebon Jeruk', '081290568572', 'fc8956a9c5bb091ed488e75e3df5ae4f', 7, 1),
(25, '14971', 'EKA RAHMATIYA', 'Jl. Komp. DPR RI RT 007/008 No.68 Kelapa Dua Kebon Jeruk ', '083877807463', '54c024de9e64af8a959229d3d49b4198', 7, 1),
(26, '14972', 'FEBRIYANTI PUTR', 'Jl. Limo RT 008/02 No. 1 Grogol Utara Keb. Lama ', '085714006170', '7d5a3c270200daf0475c1f217910f982', 7, 1),
(28, '14882', 'AIDA LATIFAH', 'Jl. Raya Kedoya RT 001/003 No.45 Kedoya Selatan Kebon Jeruk', '085778265205', 'a8feb0f39cfe2d43f62def3b8e657992', 8, 1),
(29, '14883', 'AINIYAH FITHRI', 'Jl. H. Saaba RT 013/002 No.75 Meruya Selatan Kembangan', '085691915679', 'c22f802f4e2192468fbc9485e31d062f', 8, 1),
(30, '14884', 'ANAS BIMA PRIHATNA', 'Jl. Kemanggisan Raya RT 006/010 No.117 Palmerah Palmerah', '08990998363', '2705e8fde87cd2883e9fc1f00335685f', 8, 1),
(31, '14885', 'ANITA NUR HARTATI', 'Jl. Swadarma Raya KMP II RT 002/002 No.30 Ulujami Pesanggrahan', '085778265205', '608c52894a47a2e6e35b9c555500b1e8', 8, 1),
(32, '14886', 'ANO PRASETYO', 'Jl. Pos Pengumben RT 001/005 No.38 Kelapa Dua Kebon Jeruk', '081907232702', '9c7f9ec6a570ab270604c03a8614d588', 8, 1),
(33, '14887', 'AULIA RAMADHANI PUTRI', 'Jl. Madrasah I RT 001/004 No.22 Sukabumi Utara Kebon Jeruk\r\n', '021-53661141', 'df6af7afd03086cd9331f08187159a9a', 8, 1),
(34, '14888', 'BASTA WAHYU SETYA PRABOWO', 'Jl. Sulaiman Gg. Amal 4 RT 004/004 No.53 Palmerah Palmerah', '083129466993', 'b6090cd636e93a4a4574e97002734900', 8, 1),
(35, '14889', 'BELA HANIFAH', 'Jl. Lapangan Merah RT 006/003 No.72 Joglo Kembangan\r\n', '083147122299', 'ab0590a53625f02c33db3355d65bcee3', 8, 1),
(36, '14890', 'BOBBY IBRAHIM', 'Jl. Raya Kembangan RT 005/002 No.47 Kembangan Utara Kembangan', '087888166689', '10c91cbec1b70835824b898ef16a0de7', 8, 1),
(37, '14891', 'DEVIYANTI', 'Jl. Masjid Al Ittihad RT 004/006 No.32 Kelapa Dua Kebon Jeruk', '085781170761', '09a7ae5955da82295abd34ba63761291', 8, 1),
(38, '14922', 'ALYA FADHILAH', 'Jl. Kedoya Pintu Air RT 012/005 No.33A Kedoya Selatan Kebon Jeruk', '081519564893', '3895c46ab7fd528108dc9da3d3745f88', 9, 1),
(39, '14923', 'AMELIA PUTRI ANDRIYANI', 'Jl. Kemandoran 2 RT 012/003 No.63 Grogol Utara Kebayoran Lama', '085715304765', '710ba4b1ef9012bff1eb921d2275e042', 9, 1),
(40, '14924', 'ANDINI SOFIYANTI', 'Jl. Kedoya Selatan RT 008/002 No.26B Kedoya Selatan Kebon Jeruk', '085776050167', '8e269c86c81a094e0e9aefbefb5514ce', 9, 1),
(41, '14925', 'ANDRIYANTO', 'Jl. Srengseng Dalam RT 002/005 No.34 Srengseng Kembangan', '081517220389', 'ef8051ce270059a142fcb0b3e47b1cd4', 9, 1),
(42, '14926', 'AULIA NUR ZAHRA', 'Jl. G. RT 003/005 No.36 Slipi Palmerah', '08999309952', '490efb66c5016fa88d6fcbc4e505a7ef', 9, 1),
(43, '14927', 'CHOIRUNNISA', 'Jl. Asyirot RT 002/001 No.16 Sukabumi Selatan Kebon Jeruk', '089505099722', '01741e5669e3f7622b92810ab0449276', 9, 1),
(44, '14928', 'CLARINTA ARDELIANA', 'Jl. Sulaiman RT 004/004 No.45 Palmerah Palmerah\r\n', '081514573890', '79f53927eb6603ae6c54b55ff7a39803', 9, 1),
(45, '14929', 'DENI TRI MUKTI', 'Jl. Sawah Balong RT 001/004 No.17 Srengseng Kembangan', '089637523018', '5243958a762063341dc82d2bbf0f5f33', 9, 1),
(46, '14930', 'DIAN DWI LESTARI', 'Jl. Kembangan Baru RT 005/003 No.46 Kembangan Utara Kembangan\r\n', '081906769170', '2109366d68770c5528aa56705516f364', 9, 1),
(47, '14931', 'DIO SAPUTRA', 'Jl. Pemancingan I RT 007/005 No.96 Srengseng Kembangan\r\n', '083872912859', 'f5b0e516bb635da95ca6c4d230800d44', 9, 1),
(48, '14825', 'AAQILLAH MUTHIA SHABRINA', 'Jl. Musyawarah Komp. BPK II RT 006/02 No. C6 Kebon Jeruk Jak-Bar 11530\r\n', '089673742735', '722fd8c97825bdea860322e28ac6dcbd', 10, 1),
(49, '14826', 'AHMAD FAHRIANSYAH', 'Jl. Zakarian II RT 004/03 No. 8 Sukabumi Utara Kebon Jeruk Jak-Bar 11540', '087879145074', '58eaa69d86c0bb41c0f334b95b6c8cf2', 10, 1),
(50, '14827', 'ALI THAMRIN AL DAHLAN', 'Jl Kampung Baru H. Tohir RT 003/07 No. 88 Sukabumi Selatan Kebon Jeruk Jak-Bar 11560\r\n', '0895364407324', 'fb50ef2594daff9dd6322cbb5489bcbc', 10, 1),
(51, '14828', 'DEAN SURYA ALFASYAH', 'Jl. Almubarok 2 RT 002/010 No. 15 Cipulir Keb. Lama Jak-Sel 12230\r\n', '0895391299883', '544a66d5696a6e07b69dc8df98d6f825', 10, 1),
(52, '14829', 'ERYANTO', 'Jl. Kembangan Utara RT 008/02 Kembangan Utara Jak-Bar 11610', '081514718116', 'fc0fef626c330003179e5377ee02750f', 10, 1),
(53, '14830', 'EVITA SEPTI RINJANI', 'Jl. Gambli I RT 011/05 No. 11 Srrengseng Kembangan Jak-Bar 11630\r\n', '085714235948', 'e798a0d5dea21ef441815910d5943598', 10, 1),
(54, '14831', 'FAJAR ROMADHON', 'Jl. Pulo Cempaka Raya RT 007/014 No. 12 Grogol Utara Keb. Lama Jak-Sel 12210\r\n', '085732173134', '7b6973d6fcab6b7bce360dc3a87a1293', 10, 1),
(55, '14832', 'FATHIR MUCHLANA', 'Jl. Terate RT 009/04 No. 20 Kembangan Utara Jak-Bar 11610\r\n', '081318030882', '669ea75f1504b326e37d132fec021ee8', 10, 1),
(56, '14833', 'FIKRAN ALIFQI', 'Jl. Ulujami Raya Gg. Pancoran No. 39D Ulujami Pesanggrahan Jak-Sel\r\n', '123456', 'eabeed77c370a6a4258a6373af2d137d', 10, 1),
(57, '14834', 'GILANG RIDZKI RAMADHAN', 'Jl. Madrasah II Bojong Raya RT 017/04 No. 131 Rawa Buaya Cengkareng Jak-Bar 11740\r\n', '0895322272215', '5c71dd758876eed351796c7cd2e56a54', 10, 1),
(58, '14861', 'ALFISAHRIN', 'Jl. Musyawarah RT 005/002 No.43 Kebon Jeruk Kebon Jeruk\r\n', '082114073678', '7274f01abe1fc0622bd2ff06724950c1', 11, 1),
(59, '14862', 'CHAIRUL ADAM', 'Jl. B2 RT 001/002 No.24 Srengseng Kembangan\r\n', '0895363556396', '524e30e771dba8110c0241a0882023d0', 11, 1),
(60, '14863', 'DERI KURNIA SAKTI', 'Jl. Pemancingan I RT 008/005 No.20 Srengseng Kembangan\r\n', '085694493549', 'abe6f17ee7a1e4775951399035e00841', 11, 1),
(61, '14864', 'DESTI NUR ANISYA', 'Jl. Nurul RT 012/002 No.12A Kebon Jeruk Kebon Jeruk\r\n', '089529120583', 'e2cc88bcc7302f28d93e2d31c511986b', 11, 1),
(62, '14865', 'DEWO MUKTI', 'Jl. Pahlawan II B RT 001/005 Sukabumi Selatan Kebon Jeruk\r\n', '087779284780', '305ec2f907e0fcbb74f06fef40c9a4ac', 11, 1),
(63, '14866', 'DIAS FERIANSYAH', 'Jl. Inpres 6 Larangan Utara Tangerang\r\n', '081287026686', '4b77dd47a0fdceb8afde02dd6cae9ddf', 11, 1),
(64, '14867', 'FAIZ MANGGALA ABDUL FATTA', 'Jl. Pemancingan I RT 008/005 No.26A Srengseng Kembangan\r\n', '08161824174', 'c113d499cd1461d6bc2f2db7c99fcd47', 11, 1),
(65, '14868', 'FAKHRI AL HAZMI', 'Jl. Basmol RT 010/006 No.56 Kembangan Utara Kembangan\r\n', '082111802863', 'f277335b0fda4885798095b94a3d0bc8', 11, 1),
(66, '14869', 'FITRI SETYANINGSIH', 'Jl. Flanboyan RT 007/002 Srengseng Kembangan\r\n', '085881839668', '14d2bc475177e1dde633b4ca1972d53c', 11, 1),
(67, '14870', 'ILHAM FATHONI', 'Jl. Kp. Juraganan RT 006/008 No1A Grogol Utara Kebayoran Lama\r\n', '0895358617919', '1d7466dd4217d4f000c48e9f2cdbfce9', 11, 1),
(68, '14753', 'ADAM PUTRANSYAH', 'Jl. Daud I RT 001/08 No. 5 Sukabumi Utara Kebon Jeruk Jak-Bar 11520\r\n', '08211119776', '926e263363c82458a9ae48883b7dc655', 14, 1),
(69, '14754', 'ADELIA WIRDANI', 'Jl. B Kp. Basmol RT 013/06 No. 101 Kembangan Utara Jak-Bar 11610\r\n', '089636874277', 'cb0d6d3459c57b7a5c968956b1ecf1e3', 14, 1),
(70, '14755', 'AHMAD FAUZI', 'Jl. Srengseng Gg. B2 RT 001/02 No. 3 Sreseng Kembangan Jak-Bar 11630\r\n', '087887369374', 'cc8f2e58b77f38bde7744b4109446c07', 14, 1),
(71, '14756', 'ALFARABI ABDI MARYAN', 'Jl. H. Muhajar RT 004/02 No. 40B Sukabumi Selatan Kebon Jeruk Jak-Bar 11560\r\n', '081250001310', '01fd0dbe941d41130c1614960d370929', 14, 1),
(72, '14757', 'ALFIN FATURRAHMAN', 'Jl. Tanah Baru I RT 003/013 No. 37 Grogol Utara Kebayoran Lama Jak-Sel 12210\r\n', '083891483332', '47f4b6321e9fd8e8f7326a6adc1a7c1e', 14, 1),
(73, '14758', 'AMANDA SAFIRA BILQIS', 'Jl. H. Marzuki RT 010/003 No. 44 Kebon Jeruk Jak-Bar 11530\r\n', '081287160041 ', 'f6ad645a331d5e5e95938c1439ba385d', 14, 1),
(74, '14759', 'ANANDA ERIC RIZQULLAH', 'Jl. Karya Bakti RT 012/03 No. 52 Srengseng Kembangan Jak-Bar 11630\r\n', '082124875430', 'adb015f17cc59911788adb13ba65022f', 14, 1),
(75, '14760', 'ANDIKA PRAYUDI', 'Jl. Sabeni 2 Kebon Melati Tanah Abang Jak-Pus\r\n', '087785451704', 'd45b6d92e35ff59d3f5a1861e431d581', 14, 1),
(76, '14761', 'ARYO BIMO', 'Jl. Juraganan RT 003/012 No. 2 Grogol Utara Kebayoran Lama Jak-Sel 12210\r\n', '081991833315', 'ad100897c6f809081d942836af421f86', 14, 1),
(77, '14762', 'ASYIFA URRAHMI', 'Jl. Miana RT 001/03 No. 47 Kelapa Dua Kebon Jeruk Jak-Bar 11550\r\n', '085374744567', '93bb49ede783ed9c09b650c9234be21a', 14, 1),
(78, '14763', 'DARMANSYAH', 'Jl. Kebon Jeruk RT 001/011 No. 100 Kebon Jeruk Jak-Bar 11530\r\n', '087889571771', '2fe37bd25993870f5a38563dd25b1d05', 15, 1),
(79, '14764', 'DIZA FADHIL SETIAWAN', 'Jl. Taruma Juwitan Blok N RT 001/012 Rawa Buaya Cengkareng Jak-Bar 11740\r\n', '081285416949', '885ca3d99fd35f509a2aa0130e8bf64f', 15, 1),
(80, '14765', 'EKO PRASETYO KHAFIFI', 'Jl. Manunggal RT 007/07 No. 15 Meruya Selatan Kembangan Jak-Bar 11610\r\n', '087728103585', '5554fc79d03d035fff0a7be9998332d2', 15, 1),
(81, '14766', 'FAHRIANSYAH', 'Jl. Salman RT 001/03 Kebon Jeruk Jak-Bar 11530\r\n', '083806753907', 'af3b0930d888e15a07a36b9987b70858', 15, 1),
(82, '14767', 'FAJAR RIZKI', 'Jl. Kembang Agusng III Blok F7 RT 004/05 No. 24 Kembangan Selayan Jak-Bar 11610\r\n', '082133818619', 'c84f1f1c3914a66236542d1166b01780', 15, 1),
(83, '14768', 'FARAS ADHYTIANTO WIDODO', 'Jl. Juraganan RT 007/012  Grogol Utara Kebayoran Lama Jak-Sel 12210\r\n', '085210747383', '1dfd06d3b151a21b879f3710d6b49786', 15, 1),
(84, '14769', 'MOHAMMAD KURNIA ADAM', 'Jl. H. Ridi Gg. Tabah RT 009/03 No. 157 Ulujami Pesanggrahan Jak-Sel 12250\r\n', '081318913150', 'a1f69f6000f7a8b5883b7134fcf8d558', 15, 1),
(85, '14770', 'MUHAMAD DEVIN ALFIANSYAH', 'Jl. Masjid Al-Ittihad RT 004/006 No. 43 Kelapa Dua Kebon Jeruk Jak-Bar 11550\r\n', '085604588159', '6346db6a68f632318af0c2a474b9eb34', 15, 1),
(86, '14771', 'MUHAMAD RAMADHAN HARTONO ', 'Jl. Cempaka Komp. Kodam RT 002/06 No. 74 Kebon Jeruk Jak-Bar 11530\r\n', '088289656476', 'ea3e4ebf79464bc783e063d7182bc3fd', 24, 1),
(87, '14772', 'MUHAMAD ROBBY', 'Jl. H. Muhisim RT 008/03 No. 77 Sukabumi Selatan Keon Jeruk Jak-Bar \r\n', '087786361178', '91d5e7caa88aeba26636f80e5f98daa3', 15, 1),
(88, '14713', 'ABDUL GHOFUR', 'Jl. H. Sarimun RT 008/01 No. 35 Kembangan Selatan Jak-Bar 11610\r\n', '089614156815', '2750dc2828e8f769ede73fd216f19b62', 12, 1),
(89, '14714', 'ACHMAD NUR RAMADHANI', 'Jl. KH. Hasyim Pd. Cabe RT 007/01 No. 167 Kembangan Utara Jak-Bar 11610\r\n', '085772500081', '2ee2b71a912ddc28699435eca8bd6486', 12, 1),
(90, '14715', 'ADJI SETIAJI', 'Jl. Kp. Sanggrahan RT 002/07 No. 38 Kembangan Selatan Jak-Bar 11610\r\n', '0895359425626', 'c32efcb7f667f6c5def39db8eda2e6ce', 12, 1),
(91, '14716', 'AGUNG PRASETYO', 'Jl. Srengseng Raya RT 004/06 No. 241 Srengseng Kembangan Jak-Bar 11630\r\n', '081806072512', '94bdf49dcb9b7357c377c7310c411343', 12, 1),
(92, '14717', 'AHMAD SUGIYANTORO', 'Jl. Srengseng Raya RT 0018/05 No. 33 Srengseng Kembangan Jak-Bar 11630\r\n', '081387667997', '0563cad67522fc198dee8690630e475a', 12, 1),
(93, '14718', 'AKHYAR AFRIZAL', 'Jl. Pesing Garden RT 001/08 Kedoya Utara Kebon Jeruk Jak-Bar 11520\r\n', '085880046574', '3f8025f81c08669208bc39bdcbaf4eda', 12, 1),
(94, '14719', 'ALDI PUJI TRIANTO', 'Jl. H. Senin Binus Syahdan RT 006/010 No. 5 Palmerah Jak-Bar 11480\r\n', '082112711461', '3d22f11fce309b14796ac009553b3451', 12, 1),
(95, '14720', 'ARIFUDIN HIDAYAT', 'Jl. Kp. Basmol H. Abdul Halim I RT 011/06 No. 44 Kembangan Utara Jak-Bar 11610\r\n', '081280234396', 'f00b6379b82a515a9478b6e58b783de9', 12, 1),
(96, '14721', 'ARSYA PUTRA PRATAMA', 'Jl. Jambu RT 007/07 No. 26B Srengseng Kembangan Jak-Bar 11630\r\n', '0881024731153', 'b8b0e04211dce1c104dfcdb685c9b9ad', 12, 1),
(97, '14722', 'CHRISTIANO AHMAD RHEHAN', 'Jl. Kemandoran 1 Rt 007/016 No. 32 Grogol Utara Kebayoran Lama Jak-Sel 12210\r\n', '085546511794', 'e417baa9cdf34202f71b55a27da899e8', 12, 1),
(98, '14723', 'DENI SURIYA WIJAYA', 'Jl. Junaidi RT 001/017 No. 64 Palmerah Jak-Bar 11480\r\n', '085714209549', 'c80728aa924ef2e490a13188e1178518', 13, 1),
(99, '14724', 'DHAFADRA PUTRA PERMANA', 'Jl. Madrasah RT 005/06 No. 20 Srengseng Kembangan Jak-Bar 11630\r\n', '0895612447253', 'b4c174fbc208372a8facfe462868ebf1', 13, 1),
(100, '14725', 'FADLY FIRDAUS ASRAF', 'Jl. Adam RT 003/011 No. 22 Sukabumi Utara Kebon Jeruk Jak-Bar 11540\r\n', '082299229484', 'ed80be7e22f987619ac49099673ad49f', 13, 1),
(101, '14726', 'FATURAHMAN AL RASID', 'Jl. Kemanggisan Grogol RT 006/08 No. 18 Palmerah Jak-Bar 11480\r\n', '085714181588', '4e79ea6638ba8bc06d414c9fc94760f7', 13, 1),
(102, '14727', 'FIKRI JABAL NUR', 'Jl. H. Nabet Kp. Sanggrahan RT 005/09 No. 38 Kembangan Selatan Jak-Bar 11610\r\n', '083891739147', '494ad0d24e15c7da81c7ea265c7f4cb4', 13, 1),
(103, '14728', 'HADI PRAYOGO', 'Jl. Palmerah Barat I RT 007/07 No. 17 Palmerah Jak-Bar 11480\r\n', '085887897274', '7a1ccfe60223a5bda015a388f354cf62', 13, 1),
(104, '14729', 'ILHAM FAUZI', 'Jl. Salman RT 002/03 No. 79 Kebon Jeruk Jak-Bar 11530\r\n', '081210807458', '24e709bb46c4ae9841eecac2a9e8c503', 13, 1),
(105, '14730', 'ILHAM MOUVIEC', 'Jl. Kemandoran 8 RT 004/011 No. 179E Grogol Utara Kebayoran Lama Jak-Sel 12210\r\n', '089620969941', 'db10579cd6a91c599220192b86e380eb', 13, 1),
(106, '14731', 'MASJIDA CHANDRA SAPUTRA', 'Jl. Adhi Karya RT 011/02 No. 34 Kedoya Selatan Kebon Jeruk Jak-Bar 11520\r\n', '085219244376', 'd4ff76af57c1ebcc7eca3807b9a431a6', 13, 1),
(107, '14732', 'MOCH. NAUFAL AUFA RIFQI', 'Jl. H. Saanan RT 004/02 No. 97 Kembangan Utara Jak-Bar 11610\r\n', '08129311270', '8f1dd6e7a88b9cf615c146330c591ba9', 13, 1),
(108, '14435', 'AMANDA PUSPITA AYU FEBIYA', 'Jl. Sasak II Dalam RT 005/002 Kelapa Dua Kebon Jeruk\r\n\r\n\r\n', '123456081235410', 'd169e16da608a6a8d61bc64a2d333e8a', 16, 1),
(109, '14436', 'ANANDA AJENG PRAMESTI', 'Jl. H. Rausin Gg. Kayu M<anis IV RT 004/008 No.134\r\n', '081316629777', 'a0340694826ab06bae7fe3167683c669', 16, 1),
(110, '14437', 'APRILULA PUTRI JANFOURIEN', 'Jl. Bambu I RT 009-005 No.72K Srengseng Kembangan\r\n', '082299900907', '238f646b998ed51f3d0c612d5a373414', 16, 1),
(111, '14438', 'ARBIK SARASWATI', 'Jl. Madrasah RT 006/005 Srengseng Kembangan\r\n', '081806341914', 'f78a3fbff320d57c670af3fcdafebc7e', 16, 1),
(112, '14439', 'ATINA GUSTIA', 'Jl. Jomas RT 004/005 No.29 Meruya Utara Kembangan\r\n', '082299900907', '6b41fd33b36a1ce27fc0a3b8f9d8df4c', 16, 1),
(113, '14440', 'AUDI OKTAVANNI', 'Jl. Pos Pengumben RT 001/006 Kelapa Dua Kebon Jeruk\r\n', '089657736184', '93819e80e5e3693840fa1f2c327b51b5', 16, 1),
(114, '14441', 'CHANDA AVISHA PUTRIA SULA', 'Jl. Bambu II RT 002/006 No.16B Srengseng Kembangan\r\n', '081382313735', '1f30c0ce8636ff2c424549971dcab5d8', 16, 1),
(115, '14442', 'DELAYLA MELATI ZULKARNAIN', 'Jl. Damai Raya RT 003/005 No.6 Petukangan Selatan Pesanggrahan\r\n', '08121957380', '5f745f6c801324b8334d1ec452b5740f', 16, 1),
(116, '14443', 'HANIFA SAFITRI', 'Jl. Masjid Nurul Yaqin RT 002/012 No.20 Grogol Selatan Kebayoran Lama\r\n', '081316596267', '97cbc42bf29a147e4a2c287664032734', 16, 1),
(117, '14444', 'IMELIA SANTIKA', 'Jl. Bojong Kavling RT 012/004 Rawa Buaya Cengkareng\r\n', '081316337934', '73a2ef803debeee21de0e42f9c91aa6c', 16, 1),
(118, '14445', 'INAYAH ZIL IZATI', 'Jl. Masjid Al Anwar Gg. MM RT 005/009 No.65 Sukabumi Utara Kebon Jeruk\r\n', '081383552783', 'efb534de6f86b9996e556b05ddf72357', 17, 1),
(119, '14446', 'IRA NURAHMA', 'Jl. Masjid Assurur RT 010/001 No.45 Kebon Jeruk Kebon Jeruk\r\n', '087888620730', '6ec3ff0c922ce84561ce5162f912b47e', 17, 1),
(120, '14448', 'JASMIN ZAHRA ZAINAH', 'Jl. Komp. BPK II RT 006/002 No.D-5 Kebon Jeruk Kebon Jeruk\r\n', '089653152356', '604541b9b9f266538ed001ea49fcc956', 17, 1),
(121, '14449', 'KAMILLA ISMAWATIPUTRI', 'Jl. Mawar RT 003/008 No.15 Srengseng Kembangan\r\n', '08567989085', '7f041c0dc0bc74c00d04f562504d778a', 17, 1),
(122, '14450', 'KARMILA', 'Jl. H. Mandor Salim RT 003/002 No.34C Srengseng Kembangan\r\n', '083895102624', '26ad18ebce74087e6885d52a53bd72ae', 17, 1),
(123, '14451', 'MAWAR SYLVIA HANIFAH', 'Jl. Madrasah RT 006/002 No.46 Kelapa Dua Kebon Jeruk\r\n', '081315061290', '5d5945691b9139b2876f663bba098c83', 17, 1),
(124, '14452', 'MAWARDA EROWATI', 'Jl. Kp. Baru RT 002/002 No.47 Ulujami Pesanggrahan\r\n', '089688970039', '033ee034918011e4e34a7f97d464261f', 17, 1),
(125, '14453', 'MUHAMAD ZAKRIL', 'Jl. Gg. Arjuna RT 005/005 No.40 Sukabumi Selatan Kebon Jeruk\r\n', '081383283368', '83d5a9ee8867f73d6f2c485d89296d1d', 17, 1),
(126, '14454', 'MUHAMMAD ADHA RAIHAN', 'Jl. Jeruk Manis III RT 006/010 No.75 Kebon Jeruk Kebon Jeruk\r\n', '081316596267', '288d7e4b1fa80acd699c8287ec363e12', 17, 1),
(127, '14456', 'NADA WAHYU ALIFIAN', 'Jl. Karya Bakti RT 009/003 Srengseng Kembangan\r\n', '081316337934', '81b1b300e54447e821ad2a2c690e296e', 17, 1),
(128, '14475', 'ADINDA PUTRI AULIA', 'Jl. Taman Aries Kencana 3 Blok G RT 004/003 No.79 Meruya Utara Kembangan\r\n', '081289121089', '47c25f64f2b40398afb5cd9e67e53f28', 5, 1),
(129, '14476', 'ALICA FADIA HAYA', 'Jl. Sawah Balong RT 004/006 No.58 Srengseng Kembangan\r\n', '083878357495', 'cfa932116e1a833196044a79151ccba3', 5, 1),
(130, '14477', 'ANDINI SEPTIANI', 'Jl. Kembangan Utara RT 004/002 No.74 Kembangan Utara Kembangan\r\n', '083895635691', 'd3956e2280c1e227da89bcf52043f32c', 5, 1),
(131, '14478', 'AUDIA HANDAYANI', 'Jl. Kembangan Raya RT 001/001 No.1 Kembangan Utara Kembangan\r\n', '089625617476', '14e676072a5b15381b6f7f33c3528215', 5, 1),
(132, '14479', 'AWANDR ORION', 'Jl. Lap. Merah RT 011/003 No.49 Joglo Kembangan\r\n', '089674145429', '138a14eaf4a8c188a6c41cafd9400a30', 5, 1),
(133, '14480', 'BELLA SAFITRI', 'Jl. Srengseng RT 001/004 Srengseng Kembangan\r\n', '083891345229', '9ed19fde2d99cd17ceafd0fe127f3176', 5, 1),
(134, '14481', 'CHAIRUNNISA SOPIANA', 'Jl. Al Barkah Ujung RT 002/003 No.29 Rawa Buaya Cengkareng\r\n', '081280361255', '3b0cc5f591dd5b8dacb0c8e01546b2b4', 5, 1),
(135, '14482', 'DESI PUSPITASARI', 'Jl. Duri Raya Blok A1/1 RT 001/004 Kedoya Selatan Kebon Jeruk\r\n', '081584858238', 'b0e2ff951d07b244a06800304fb423f0', 5, 1),
(136, '14483', 'DESTIANA BUDI WARDANI', 'Jl. Sawah Balong I RT 006/006 No.37 Srengseng Kembangan\r\n', '08986768658', '7048a4636546df0025a5a78b0fc517c0', 5, 1),
(137, '14485', 'FITRI AYU', 'Jl. H. Naim RT 009/002 No.71 Kembangan Utara Kembangan\r\n', '08982824644', '2f27e0f4118efff145aeecd8367fbb37', 5, 1),
(138, '14486', 'ILDA NURKHOLIPAH', 'Jl. Kembangan Utara RT 009/002 No.51 Kembangan Utara Kembangan\r\n', '081285901528', 'aa8cb12cf9bdaf4c309614e7a427b480', 18, 1),
(139, '14487', 'IMAS FADILA', 'JL. Pejuangan Gg. Melati RT 012/010 No.83 Kebon Jeruk Kebon Jeruk\r\n', '081380624396', '5beb66e0254ebe2034311db439939e76', 18, 1),
(140, '14488', 'INDAH RAHMAWATI', 'Jl. H. Mading RT 008/002 No.12 Kembangan Utara Kembangan\r\n', '085320840119', '827f9b2d5830e0cf3d3987cc9b575eec', 18, 1),
(141, '14489', 'LULU SYAKIRA', 'Jl. Kembangan Raya RT 002/001 No.1 Kembangan Utara Kembangan\r\n', '089684936211', '8efe4ff08d6f51db0f7179fbef12f2f1', 18, 1),
(142, '14490', 'MUHAMAD DAFA RAFSANZANI', 'Jl. Kp. Baru RT 004/004 No.10 Sukabumi selatan Kebon Jeruk\r\n', '085810067697', '79bdf6773fe52c08470c97f7218ed3e9', 18, 1),
(143, '14491', 'M. ERLANGGA RADITYAN RAMA', 'Jl. Wijaya Kusuma RT 008/008 No.104 Kelapa Dua Kebon Jeruk\r\n', '081380624396', '24bdf19471ff9ff91a2aed47a747ca4e', 18, 1),
(144, '14492', 'MARELIA ZAHRA SELANDIA', 'Jl. Tanah Seratus RT 001/004 No.62 Sudimara Jaya Ciledug\r\n', '089629953192', '5ae81daa87d6649df09002741e5b1738', 18, 1),
(145, '14493', 'MAYANG AZZAHRA', 'Jl. AA RT 005/007 No.14 Sukabumi Selatan Kebon Jeruk\r\n', '081517440280', '580274a213455c56684ab9f6e7a9995a', 18, 1),
(146, '14494', 'M. RIO FIRMANSYAH', 'Jl. Lap. Tenis RT 006/011 Meruya Utara Kembangan\r\n', '085813104744', '54eb551059f626c9e2682813fff354a8', 18, 1),
(147, '14495', 'MUHAMMAD ANDIKA AZUMI', 'Jl. Kp. Baru V RT 006/002 No.32 Ulujami Pesanggrahan\r\n', '082113945875', '45e0e538b89751332e2055013fe7ac3e', 18, 1),
(148, '14672', 'ADITIYA NUGRAHA', 'Jl. H. Syuaib RT 003/013 Kebon Jeruk Kebon Jeruk\r\n', '085591768359', 'eb844cbe61ad95e6462ee45f7c3d87ae', 19, 1),
(149, '14673', 'ADRIAN RACHMAT FAHREZA', 'Jl. Kp. Salo RT 005/004 No.64 Kembangan Utara Kembangan\r\n', '087777176022', '5f353180421dc744d4e204a6c0f330cd', 19, 1),
(150, '14674', 'AFIATI ROSIDAH', 'Jl. Kp. Salo RT 007/004 Kembangan Utara Kembangan\r\n', '085921159790', '8239a17531bc8edea4ad8a2ddfdbbe17', 19, 1),
(151, '14675', 'AGUNG PRASETYO', 'Jl. Bangun Nusa Raya No.10 RT 004/004 Kembangan Utara Kembangan\r\n', '085847395759', 'f7eabb16f5527507fc1236f156c5b816', 19, 1),
(152, '14676', 'AL AZIZ KURNIAWAN', 'Jl. Sulaiman RT 005/003 No.31A Sukabumi Utara Kebon Jeruk\r\n', '08128293158', '8eb0a23b70975a5e167147f4b0a881b6', 19, 1),
(153, '14677', 'ALFIN FIRDAUS', 'Jl. Kembangan Utara RT 008/002 Kembangan Utara Kembangan\r\n', '089673578117', 'e5c69c0e3063671d1cd77ef51c041b83', 19, 1),
(154, '14678', 'DAUD', 'Jl. Raya Rawa Belong Gg. T. RT 007/015 No.67 Palmerah Palmerah\r\n', '0895342118587', '5847ac0c8efb8552d1b7c42a4c3f2418', 19, 1),
(155, '14680', 'CHIKA APRILIA', 'Jl. Kemanggisan Pulo RT 009/017 No.28 Palmerah Palmerah\r\n', '0895615802307', 'f31bad5d6425dd6d172c786a1bffe4a7', 19, 1),
(156, '14681', 'DANU PUJA KESUMA', 'Jl. Kp. Baru RT 009/010 No.80 Kembangan Utara Kembangan\r\n', '08561205000', '628f7dc50810e974c046a6b5e89246fc', 19, 1),
(157, '14682', 'DEDE SULAIMAN', 'Jl. Gelora 9 Blok B No.65 RT 004/002 Gelora Tanah Abang\r\n', '021-5483415', '02c6a2a8cc47b260c0c3c649db4a2d9c', 19, 1),
(158, '14683', 'DICKY PURNAMA PUTRA', 'Jl. Kemanggisan Pulo RT 004/017 No.17 Palmerah Palmerah\r\n', '081212124669', 'c71c14199fd7d86b0be2a0d4ee4c738f', 20, 1),
(159, '14684', 'FADIA MEILIZA', 'Jl. Kemandoran VIII RT 007/011 No2 Grogol Utara Kebayoran Lama\r\n', '08159752905', '5f7c755fd883d5c3c343d9b06ca9db05', 19, 1),
(160, '14685', 'HAMDALLAH RIZIQ RAMADHAN', 'Jl. Kemandoran VIII RT 009/011 No.44 Grogol Utara Kebayoran Lama\r\n', '087855984691', 'b8262a23052612c56595a230615f2250', 20, 1),
(161, '14686', 'ILHAM SETIAWAN', 'Jl. Kp. Pulo RT 007/007 No.52 Kembangan Utara Kembangan\r\n', '087851109133', 'b49732e7c77fbc9badd37b4f49960698', 19, 1),
(162, '14687', 'INTAN CAHYANI', 'Jl. Karya Baru RT 008/003 No.54 Srengseng Kembangan\r\n', '08979808958', '99e5a6ae292728f981127b71861de113', 20, 1),
(163, '14688', 'LAYLA APRILIA', 'Jl. Musyawarah I RT 005/002 No.50 Kebon Jeruk Kebon Jeruk\r\n', '0895396168308', '757334847f188c6304b84ec6b018a965', 20, 1),
(164, '14689', 'MUHAMAD AGUNG SAPUTRA', 'Jl. Kembangan Utara RT 008/002 No.6Kembangan Utara Kembangan\r\n', '081218461816', '09d0326952871a6f35d61a82415468d7', 19, 1),
(165, '14691', 'MUHAMMAD ADIP', 'Jl. Kiruntag RT 001/001 No.37 Kelapa Dua Kebon Jeruk\r\n', '087889464250', '6340831392e9cd8af9598274f4b3c5c0', 20, 1),
(166, '14692', 'MUHAMMAD AQIL ASHIDQI', 'Jl. Mawar III RT 001/007 No.22 Kebon Jeruk Kebon Jeruk\r\n', '088808761095', 'ae7d9dc853482ef5146fb11f73f93b0b', 20, 1),
(167, '14693', 'MUHAMMAD FAQIH MAULANA', 'Jl. Kemanggisan Grogol RT 013/008 Palmerah Palmerah\r\n', '089631685883', '25989f1da5598dd89e7134affeca8697', 20, 1),
(168, '14203', 'AL FIANDRI', 'JL.CILEDUG RAYA RT 018/003 NO. 18 PESANGGRAHAN ULUJAMI JAK-SEL\r\n', '081310330929', 'b0eec27361a2a03d4480b560df531df7', 21, 1),
(169, '14204', 'ALANSYAH RAMADHAN', 'JL. KLINGKIT RAYA GG. MASJID AL-MUTTAQIN RT 002/011 NO. 51 RAWA BUAYA CENGKARENG JAK-BAR 11740\r\n', '087804026871', 'c8720c9e82b818798e7b391fd62adf33', 21, 1),
(170, '14205', 'ALBILASIF SOFYAN', 'JL. MAKAM JOGLO RT 008/003 JOGLO KEMBANGAN JAK-BAR 11640\r\n', '087880495432', 'a8578be2fe9a67d039ee7b4f18697286', 21, 1),
(171, '14206', 'ANDREY KURNIAWAN', 'JL. CEMPAKA RAYA RT 002/011 RAWA BUAYA CENGKARENG JAK-BAR 11740\r\n', '089677168277', 'a45613e8740e38fe7d019d79fbf8712b', 21, 1),
(172, '14208', 'ARIYANURROHMAN ISNAIN', 'JL. KH. HASYIM PD. CABE KEMBANGAN UTARA JAK-BAR 11610\r\n', '081280746626', '2e945b99f24f789d68d85ee332131c93', 21, 1),
(173, '14209', 'ASEP SETIAWAN', 'JL. TANGGUL CENGKARENG RT 004/006 NO. 1 KEMBANGAN UTARA KEMBANGAN JAK-BAR 11610\r\n', '082299862882', '0d8e7181cecfb125aee394596b658287', 21, 1),
(174, '14210', 'BAYU YUDHA PRATAMA', 'JL. SAWAH BALONG RT 004/006 NO. 89 SRENGSENG KEMBANGAN JAK-BAR 11630\r\n', '0838040660022', '2df41f38afef75d8c599483001daf2e1', 21, 1),
(175, '14200', 'ADAM SYEHAN AL FARIZ', 'JL. KEMBANGAN UTARA RT 001/001 NO. 21 KEMBANGAN UTARA JAK-BAR 11610\r\n', '082297424120', '72fa288df9f22f7167dff80cf89fd4e5', 21, 1),
(176, '14201', 'AHMAD NAWFAL', 'JL. H. SAANAN RT 004/002 NO. 103 KEMBANGAN UTARA JAK-BAR 11610', '0895617518152', '58fe2003170159fd68519b7f9840fdb2', 21, 1),
(177, '14202', 'AHMAD SHOFIL MUBAROK', 'JL. H. SAABA RT 002/002 NO. 34 MERUYA SELATAN KEMBANGAN JAK-BAR 11650\r\n', '085217013776', '5a834ec7e9dc45a5fae01dc7497e534f', 21, 1),
(178, '14211', 'DANI IKSAN AGUSTIANTO', 'JL. CEMPAKA RAYA RT 010/011 RAWA BUAYA CENGKARENG JAK-BAR 11740\r\n', '081282266634', 'f416d0fbce436dde50730df3a12bba3b', 22, 1),
(179, '14212', 'DENNY GUNAWAN SETIABUDI', 'JL. KP. SANGGRAHAN RT 004/003 NO. 253 MERUYA UTARA KEMBANGAN JAK-BAR 11620\r\n', '089654809677', '65f4086dbc18fa214f5a7a49bf55b981', 22, 1),
(180, '14213', 'DIMAS ADE PUTRA', 'JL. RADEN SALEH RT 001/006 NO. 93 KARANG MULYAN KARANG TENGAH CILEDUG TANGERANG 15157\r\n', '089686585925', '5a20abd7831fa1ebd199086e4a69a49a', 22, 1),
(181, '14215', 'FAUZI DAREN', 'JL. KLINGKIT FLAMBOYAN RT 008/012 NO. 16B RAWA BUAYA CENGKARENG JAK-BAR 11740\r\n', '087875054096', '8be904ad045c578053fc6052578f9324', 22, 1),
(182, '14216', 'FRIANDI MAULANA', 'JL.JOGLO RAYA RT 008/008 NO. 43B JOGLO KEMBANGAN JAK-BAR 11640\r\n', '081584531312', '631fe0c7519b232b0a0f6b965af015a9', 22, 1),
(183, '14217', 'JOHAR EKO SEKTIONO', 'JL. JALUR 20 RT 002/010 NO. 4 MERUYA UTARA KEMBANGAN JAK-BAR 11620\r\n', '081314259232', 'c27181a18d3b30d14d66a1a56c068548', 22, 1),
(184, '14218', 'MOCHAMAD RHIEZKY EKAPUTRA', 'JL. BAMBU I RT 001/005 NO. 50D SRENGSENG JAK-BAR 11630\r\n', '082114512026', 'b326a08bb69d28ec5947c8438f12dd66', 22, 1),
(185, '14219', 'MUGI HARIYANTI', 'JL. TAMAN KOTA RT 008/008 NO. 42 KEDAUNG KALIANGKE CENGKARENG JAK-BAR 11710\r\n', '089665568141', 'bc0573e9c47c22585365c4c8351b46b1', 22, 1),
(186, '14220', 'MUHAMAD ARDIANSYAH', 'JL. KP. KLINGKIT TIMUR RT 006/012 RAWA BUAYA CENGKARENG JAK-BAR 11740\r\n', '085775234404', '9e6bc03970c47b5183cb2ee13799dcca', 22, 1),
(187, '14221', 'MUHAMAD FAUZAN RAMADHAN', 'JL. H. SARIMUN RT 008/001 NO. 72 KEMBANGAN SELATAN JAK-BAR 11610\r\n', '085780605828', '266c430a5f40c90947ba9db582a37f54', 22, 1),
(189, '14313', 'ACHMAD FARHAN ABDILLAH', 'JL. MADRASAH I GG. FILODENRUM I RT 001/004 NO. 22 SUKABUMI UTARA KEBON JERUK JAK-BAR 11540\r\n', '085880574176', '6a6caa12c63ac1c2f2b7d967b512887d', 23, 1),
(190, '14314', 'AHMAD WIRANO', 'JL. CEMPAKA RAYA RT 001/002 MERUYA UTARA KEMBANGAN JAK-BAR 11620\r\n', '081210978486', '8a6cb96eabdd2be1fe1e8bf4043d385f', 23, 1),
(191, '14315', 'AKSEL FERGIAWAN KAMIL', 'JL KEBON JERUK RAYA 59.T  RAWA BELONG RT 006/015 NO. 3 PALMERAH JAK-BAR 11480\r\n', '08128192076', '1aaa7438a59157a0f21ad30dda4d4088', 23, 1),
(192, '14316', 'ALGHIFARY HIDAYAT PUTRA', 'JL. DAMAI RT 002/002 NO. 1 SUKABUMI SELATAN KEBON JERUK JAK-BAR 11560\r\n', '085894884493', 'cd2018beeece5fb0a71a96308e567bde', 23, 1),
(193, '14317', 'AMIL MA ARUF', 'JL. H. DAMIN HS. RT 004/07 NO. 85 MERUYA SELATAN KEMBANGAN JAK-BAR\r\n', '08551130737', 'b36fd154dd0df788b77b7cfe39200ba3', 23, 1),
(194, '14318', 'ANGGITO ABIMANYU', 'JL. KLINGKIT RAYA RT 010/011 NO. 23B RAWA BUAYA CENGKARENG JAK-BAR 11740\r\n', '087881625436', 'a15f9896c1b92e7adc7d0232afb30816', 23, 1),
(195, '14319', 'ARNANDRA LUTHFI PRADANA', 'JL. KLINGKIT RAYA RT 010/011 NO. 1A RAWA BUAYA CENGKARENG JAK-BAR 11740\r\n', '081318924294', '51b2e138a07e3570fb7147311365a5eb', 23, 1),
(196, '14320', 'DESITA ANGGRAENI', 'JL. H. DEMANG RT 005/005 NO. 113 KARANG MULYA KARANG TENGAH TANGERANG 15157\r\n', '08176422379', '33edf41c0becd0d57c35c4e27276617b', 23, 1),
(197, '14321', 'ERVIN NOVRIANDRE', 'JL. AL-HIDAYAH KP. BASMOL RT 006/006 KEMBANGAN UTARA JAK-BAR 11610\r\n', '081806649553', '08fcb5ead4e963a6f0bbdbc971f4a3ee', 23, 1),
(198, '14322', 'EVAN MARCELLO ERAJAYA', 'JL. PEMANCINGAN I RT 007/005 NO. 14 SRENGSENG KEMBANGAN JAK-BAR 11630\r\n', '083871719606', 'd3ddedd999aa150f47c2d0a55cb17898', 23, 1),
(199, '14323', 'GILANG RAMADHAN', 'JL. PEMANCINGAN I RT 008/005 NO. 35 SRENGSENG KEMBANGAN JAK-BAR 1163\r\n', '089643361682', '3131a4cd22542b79134fe80f69f5b6ca', 24, 1),
(200, '14324', 'IRSYAZQIA SARY', 'JL. HUD II RT 006/005 NO. 55 SUKABUMI UTARA KEBON JERUK JAK-BAR 11540\r\n', '081287044159', '8be57c24680317c02843631b253179d8', 24, 1),
(201, '14325', 'KEYSHA DAMAYANTI', 'JL. PESING POGLAR RT 005/005 KEDAUNG KALIANGKE CENGKARENG JAK-BAR 11710\r\n', '087781030261', '085d5d1e61effabc440d74ac51b91d87', 24, 1),
(202, '14326', 'LINDA MARYANI SETIOKO', 'JL. MASJID ATTAQWA RT 003/8002 KEMBANGAN UTARA JAK-BAR\r\n', '123456', '18d3284f148b6cb726b412b7059223ff', 24, 1),
(203, '14327', 'LISA PUTRI ANGRAINI', 'JL. H. SOLEH I RT 008/008 SUKABUMI SELATAN KEBON JERUK JAK-BAR 11560\r\n', '087781030261', '8f48863757fe83ca146cbf93e37b1ab7', 24, 1),
(204, '14328', 'MUHAMAD RIDHO', 'JL. YAKUB RT 004/008 NO. 22 SUKABUMI UTARA KEBON JERUK JAK-BAR 11540\r\n', '085885214477', 'fda6baab618b39821b678bd52ff26428', 24, 1),
(205, '14329', 'MAULANA IBRAHIM', 'JL. MUSYAWARAH I RT 012/002 NO. 2A KEBON JERUK JAK-BAR 11530\r\n', '0895635995964', '33192f6b62911c61d4073ef0f9923420', 24, 1),
(206, '14330', 'MERYO RAMADHAN', 'JL. KH. NASIR RT 009/005 NO. 69C SRENGSENG KEMBANGAN JAK-BAR 11630\r\n', '081311318117', '11d8ffa1c1cb79e22b6d94667d3847d9', 24, 1),
(207, '14331', 'MIFTAHUL HUDA EL JAMIL', 'JL. ADAM UJUNG RT 009/005 NO. 33A SUKABUMI UTARA KEBON JERUK JAK-BAR 11540\r\n', '081213642493', '0503bf609757acf2e75aa8cbc0d8323b', 24, 1),
(208, '14332', 'MOHAMMAD ALFI', 'JL. MELATI  MUTIH RT 002/006 NO. 45 KEMANGGISAN PALMERAH JAK-BAR 11480\r\n', '085940716769', '7dd21654ce1c39ec7632d219e8e71f11', 24, 1),
(209, '13950', 'ARYA SEPTIAWAN', 'Jl. H. Zuhri RT 004/010 Meruya Selatan Kembangan Jak-Bar\r\n', '085697509224', 'fa45e04412386eaef9d603bc349b5065', 25, 1),
(210, '13951', 'AURA FALYA PUTRIAWAN', 'Jl. Raya Joglo RT 010/006 No. 53 Joglo Kembangan Jak-Bar\r\n', '087777264545', 'd56fac4fc074379769b86e77e00422dc', 25, 1),
(211, '13952', 'AYU LESTARI', 'Jl. Raya Srengseng RT 004/06 No. 73 Srengseng Kembangan Jak-Bar\r\n', '08551913990', '4a3cffe005397d4cffdee044f1c8d30e', 25, 1),
(212, '13953', 'AZHARA', 'Jl. Sulaiman RT 007/03 No. 6 Sukabumi Utara Kebon Jeruk Jak-Bar\r\n', '087883918714', '4cf06252cc21d496e754ad7185d0617d', 25, 1),
(213, '13954', 'DARA PRANANDARI', 'Jl. Lapangan Merah RT 012/03 Joglo Kembangan Jak-Bar\r\n', '085775455444', '7fb56a46e022f780f9de8fbd72aa091b', 25, 1),
(214, '13955', 'DEBBY DWI LUCFRETIA', 'Jl. H. Soleh IA RT 011/03 No. 686 Sukabumi Selatan Kebon Jeruk Jak-Bar\r\n', '085725221686', '1ad31a8fd663d63f490bde6093821c7a', 25, 1),
(215, '13956', 'EKA PRAMUDIA WARDANI', 'Jl. Pesanggrahan Komplek BPPT RT 004/03 Meruya Utara Kembangan Jak-Bar\r\n', '087885295508', '0d8b5e804141b2297b65df6ff6c9ce27', 25, 1),
(216, '13957', 'ELISABET KAROLINA', 'Jl. KH. Nasir RT 002/02 No. 31 Srengseng Kembangan Jak-Bar\r\n', '085873542210', 'd203bbe1b9e242a034b376bafda15a99', 25, 1),
(217, '13958', 'FAJAR GYMNASTIAR SUPARJO', 'Jl. Swadarma Raya RT 018/003 No. 22 ulujami Pesanggrahan Jak-Sel\r\n', '081382748887', 'cd50a6640d6284992905dc447fd7701d', 25, 1),
(218, '13960', 'JIHAN JAUHARA BOEDI AVRIL', 'Jl. M. Saidi Raya RT 011/01 Petukangan Selatan Pesanggrahan Jak-Sel\r\n', '08159927831', '570f6ff5228e5ab43af45555c8710998', 25, 1),
(220, '13961', 'LAELA RAKHMAWATI', 'Jl. H. Junaidi Kemanggisan Utama RT 001/017 No. 79 Kemanggisan Palmerah Jak-Bar\r\n', '081383995149', '262f3d665f3ebe0bb7af2a1044ea9d23', 26, 1),
(221, '13962', 'MARLIA SALSADIRA', 'Jl. Kp. Sanggrahan RT 004/03 No. 102 Meruya Utara Kembangan Jak-Bar\r\n', '085921997919', 'f84f4800d13741a98ddf9bc46e58355c', 26, 1),
(222, '13963', 'MELIY YANAH', 'Jl. Adhi Karya Pintu Air RT 002/05 No. 38 Kedoya Selatan Kebon Jeruk Jak-Bar\r\n', '081290011061', 'a93dddc1fd67c3a6409fafb5801d7d50', 26, 1),
(223, '13964', 'MUHAMAD IRFANSYAH', 'Jl. Pilar II RT 003/03 No. 31 Kedoya Selatan Kebon Jeruk Jak-Bar\r\n', '0818688330', '36cc76f6dc57f50bdbda82f92aff1b94', 26, 1),
(224, '13965', 'MUHAMMAD AFIF', 'JL. Palmerah Barat 59 RT 002/05 No. 3 Grogol Utara Kebayoran Lama Jak-Sel\r\n', '085776700215', 'bafd1b75c5f0ceb81050a853c9faa911', 26, 1),
(225, '13966', 'MUHAMMAD HARIS MUSLIM HAF', 'Jl. Kebon Jeruk RT 007/012 No. 75 Kebon Jeruk Jak-Bar\r\n', '081233066215', 'aa8da3e60fb65cda2ae6b220268c4964', 26, 1),
(226, '13969', 'NATASYA AISYAH NOVLIANTI', 'Jl. Raya Joglo RT 010/06 No. 53 Kembangan Jak-Bar\r\n', '089508634841', '3c63021df32e126a8dcf115d07e23f59', 26, 1),
(227, '13970', 'NIKEN', 'Jl. Flamboyan RT 008/012 No. 38 Rawa Buaya Cengkareng Jak-Bar\r\n', '0895370165635', '4641f63dd756285f550c6361c9da2e31', 26, 1),
(228, '13971', 'NIKEN STEFANI', 'Jl. Yunus III RT 005/06 No. 101 Sukabumi Utara Kebon Jeruk Jak-Bar\r\n', '085863036702', '95e2b3bc377ab32c26e010300ce0081b', 26, 1),
(229, '13972', 'NURLAILY ISNAENI', 'Jl. Kebon Jeruk RT 006/01 No. 12 Kebon Jeruk Jak-Bar\r\n', '08579578246', 'c4d856156b2c629314b9edd13523fe8e', 26, 1),
(230, '14100', 'DESFINTA FITRIANTI', 'Jl. Masjid At Taqwa RT 001/002 No.52 Kembangan Utara Kembangan\r\n', '087777655502', '1e2327accf8e3b40ac236b51c966f94a', 27, 1),
(231, '14138', 'DESI KHAIRUNNISA', 'Jl. Madrasah I RT 001/004 No.5 Sukabumi Utara Kebon Jeruk\r\n', '0895333082484', '970fb1f772fc2c31ef53234842710ee9', 27, 1),
(232, '14139', 'DESVINA SALWA ZAGITA', 'Jl. Tomang Tinggi XV RT 014/007 No.8 Tomang Grogol Petamburan\r\n', '08129463330', '878df06ce009b583ce76653891aec539', 27, 1),
(233, '14066', 'DEWI KURNIA SARI', 'Jl. Kp. Baru RT 010/010 Kembangan Utara Kembangan\r\n', '085773006002', '972494a2e9aa540c53cdadab0caa401c', 27, 1),
(234, '13995', 'DEWI SAFITRI', 'Jl. Lapangan Merah RT 006/003 No.73 Joglo Kembangan\r\n', '085716783819', 'b6b48639e4627ac7813f3501da8e4465', 27, 1),
(235, '13996', 'DEWITA RAHMAWATI', 'Jl. Madrasah II RT 014/004 No.31E Rawa Buaya Cengkareng\r\n', '081288332670', 'e1c2e55cc575a2ccb30e7bbafc011b03', 27, 1),
(236, '14067', 'DIAN RIFIYAH', 'Jl. Sulaiman Gg. Amal IV RT 004/004 No.5 Palmerah Palmerah\r\n', '087880781207', 'f4cfab7920e9cb176ab3b4e324d85f63', 27, 1),
(237, '14101', 'DIFTA MUHAMMAD FIKRI', 'Jl. H. Marzuki RT 006/003 No.193 Kebon Jeruk Kebon Jeruk\r\n', '081297881971', '56d8b82bcfbf4e2637ba17d56b96516a', 27, 1),
(238, '14068', 'DINI AULIA', 'Jl. Masjid At Taqwa RT 006/008 No.27 Kembangan Utara Kembangan\r\n', '081384255038', 'ab394288aed46588bdc90bf4b541ec0d', 27, 1),
(239, '14141', 'ERINA KARTIKA MARTA SUNJA', 'Jl. Cemara RT 002/007 Srengseng Kembangan\r\n', '087777992638', 'ca6d6b468064abd249fb3533d4ddaed7', 27, 1),
(240, '13997', 'FADILAH', 'Jl. KH. Hasyim Pondok Cabe RT 004/001 Kembangna Utara Kembangan\r\n', '081395947642', 'efe7beaa44d6e14c30432d43b2522ba2', 28, 1),
(241, '14142', 'FARIAND JANSENA AKBAR', 'Jl. Masjid An Nur RT 004/011 No.101 Rawa Buaya Cengkareng\r\n', '085841110337', 'b304d12155fc51aaf1db47b40292ec54', 28, 1),
(242, '14103', 'FAUZAN ALFI YASIN', 'Jl. Harun Raya RT 004/007 No.12 Sukabumi Utara Kebon Jeruk\r\n', '087883404611', '73434c1432fa81daf8b4ee87589c509c', 28, 1),
(243, '14104', 'FIAN SAFUTRA ', 'Jl. H. Darsa RT 011/002 No.101 Kebon Jeruk Kebon Jeruk\r\n', '081284777884', '770e1aa37246979c9e2db7b82cfd9412', 28, 1),
(244, '14028', 'FIRMANSYAH', 'Jl. Lap. Tenis RT 007/011 No.47B Meruya Utara Kembangan\r\n', '081287722406', '097a266326991a991c77d203160c8563', 28, 1),
(245, '13998', 'FRECILIA GUSMI ANDARI', 'Jl. Meruya Utara RT 007/002 No.106 Meruya Utara Kembangan\r\n', '082114183198', '63e6bc520edcbaa95446b5690d989f30', 28, 1),
(246, '14069', 'GALANG AJI ASMORO', 'Jl. Kp. Baru III RT 010/002 No.26A Ulujami Pesanggrahan\r\n', '082297631077', '75144d9c8780608425dd34bfaf7b96f0', 28, 1),
(247, '14143', 'GILANG SAPUTRI', 'Jl. Gg. H. Samad RT 006/011 Meruya Selatan Kembangan\r\n', '0895333857218', '8e5374203123a2502404dbd7ea19862d', 28, 1),
(248, '14144', 'GILANG TRI BHASKARA', 'Jl. Swadarma IV RT 008/001 No.82 Ulujami Pesanggrahan\r\n', '087886687625', '636b1370d6dfae91f2042eef96c994b1', 28, 1),
(249, '14070', 'GISELLA YUNIAR', 'Jl. H. Domang RT 008/002 No.31 Kelapa Dua Kebon Jeruk\r\n', '081319562254', '3ee7811d398ae2240f5d3f0684ecb8d3', 28, 1),
(250, '14165', 'ADI ABDURACHMAN', 'Jl. Kp. Salo RT 005/04 No. 66 Kembangan Utara Jak-Bar\r\n', '083874435732', '2d280461b029134123f1f1a356e176b1', 32, 1),
(251, '14166', 'AHMAD FIRDAUS', 'Jl. Raya Duri Kosambi RT 008/02 No. 33A Duri Kosambi Cengkareng Jak-Bar\r\n', '087874468560', '8b89afaf8e00e0a46ea4d76ac473b1a2', 32, 1),
(252, '14167', 'AHMAD MISBAH ANNADAWI', 'Jl. H. Niming Gg. H. Marjuki RT 007/06 No. 175 Srengseng Kembangan Jak-Bar\r\n', '085772880973', 'd9d838896ca0a5e16e7efa2439943fbd', 32, 1),
(253, '14168', 'AHMAD SYAH JIDAN', 'Jl. Darsa RT 011/012 No. 122 Kebon Jeruk Jak-Bar\r\n', '083877015086', 'b57532bada44706da665a55d2ce2011e', 32, 1),
(254, '14169', 'AKHMAD AGIL DAEROBI', 'Jl. Al-Falah RT 004/08/ No. 27 Kembangan Utara Jak-Bar\r\n', '081586363280', '2f093e72fa038b855c80131ec3fba75c', 32, 1),
(255, '14170', 'ALVIANI RAHMANDA PUTRI', 'Jl. Kp. Bugis Gg. Masar I RT 004/03 No. 46 Kembangan Utara Jak-Bar\r\n', '085649751183', 'c5fe17b7a8d023ade2bbb05e574eef78', 32, 1),
(256, '14172', 'ARDIANSYAH PRATAMA SAPUTR', 'Jl. Kiruntang RT 001/01 No. 16C Kelapa Dua Kebon Jeruk Jak-Bar\r\n', '08990906483', '9f3d342d38e036a9137ef3e270d9d79c', 32, 1),
(257, '14174', 'ATMAR NURFITRAH', 'Jl. H. Marjuki RT 005/03 No. 13 Kebon Jeruk Jak-Bar\r\n', '082112879163', '29a83a8a9641bb860a679d7e5ba52d26', 32, 1),
(258, '14175', 'BAYU GIRI SASONGKO', 'Jl. Sawah Balong RT 003/04 No. 73 Srengseng Kembangan Jak-Bar\r\n', '085959047350', 'a3dfec8b6a89762b454f0b5e660c2e78', 32, 1),
(259, '14176', 'BURHANUDIN', 'Jl. Jomas RT 004/05 No. 30 Meruya Utara Kembangan Jak-Bar\r\n', '083899886561', '9dbffba2a03b29811719318b20070b4a', 32, 1),
(260, '14177', 'DANI YULIANTO', 'Jl. Lapangan Bola RT 009/01 No. 20 Srengseng Kembangan Jak-Bar\r\n', '081382472891', '804a73df74595024fef5c7082428a668', 29, 1),
(261, '14179', 'ELOK ASNAWIYAH', 'Jl. Basmol RT 005/06 No. 7 Kembangan Utara Jak-Bar\r\n', '081319930440', '2677c94cc946bd788a3828099d6bcd49', 29, 1),
(262, '14180', 'FAHRULROJHI HIDAYAT', 'Jl. Lapangan Tenis RT 002/05 No. 46 Srengseng Kembangan Jak-Bar\r\n', '085813719800', '6d0893ce02e4926539d6f7e0601c6161', 29, 1),
(263, '14181', 'HAFIZ SAIFULLAH', 'Jl. Mandor Salim RT 002/009 No.20 Srengseng Kembangan\r\n', '089631693304', '55f04ea8d0761b7aff9d21f23ebcbfef', 29, 1),
(264, '14182', 'INDAH AYU SAFITRI', 'Jl. Kemandoran I RT 002/04 No. 29A Kembangan Utara Jak-Bar\r\n', '081288681613', '093c72c52ca8a8488fa54146997aa39d', 29, 1),
(265, '14183', 'INDAH MARCELLA ZELIANTI', 'Jl. Nuh RT 008/10 No. 11 Sukabumi Utara Kebon Jeruk Jak-Bar\r\n', '083875931518', '37bd8b4bb1cea47935613348ad16c660', 29, 1),
(266, '14184', 'LIA SELPIA', 'Jl. Panjang Kp. Baru RT 008/04 No. 26 Sukabumi Selatan Kebon Jeruk Jak-Bar\r\n', '082111399336', '76c0df0665c83c5944ae67cae2739f7e', 29, 1),
(267, '14185', 'M. IFWAL GUNAWAN', 'Jl. Kembangan Utara RT 001/08 No. 14J Kembangan Jak-Bar\r\n', '081315084754', 'a0cce36de7a1457b6802255fcec69081', 29, 1),
(268, '14186', 'MOCHAMMAD FAHMI', 'Jl. Salam I RT 007/06 No. 44 Sukabumi Utara Kebon Jeruk Jak-Bar\r\n', '089530714310', 'd07d8b37dae3d7092c9f0c88945f0b6e', 29, 1),
(269, '14187', 'MUHAMAD ABDUL RAFLIH', 'Jl. Kebon Nanas RT 005/010 No. 11 Grogol Selatan Kebayoran Lama Jak-Sel\r\n', '089643479405', '24a7ffe3bda20532c5f116825ff5dfcf', 29, 1),
(270, '13744', 'ABDUL AZIS', 'Jl. Jomas Kp. Sanggrahan RT 002/005 No. 32 Meruya Utara Kembangan Jak-Bar\r\n', '083896700956', '035eb76e8e1199879473db82502d31dc', 30, 1),
(271, '13745', 'ABDUL FAIZ SAJIDAN', 'Jl. Kp. Kedaung Basmol RT 012/06 No. 14 Kembangan Utara Jak-Bar\r\n', '089663394106', '197375e98eac65e65da5ff18ec512978', 30, 1),
(272, '13746', 'ABIYYI AHMAD ROIF', 'Jl. H. Daud RT 002/03 No. 37 F Sukabumi Selatan Kebon Jeruk Jak-Bar\r\n', '081388266482', 'e2ba9673fc8a4f64bbebfc27f0d73ad2', 30, 1),
(273, '13747', 'ACHMAD BILLAL', 'Jl. Kp. Sanggrahan RT 002/07 No. 34 Kembangan Selatan\r\n', '085946383648', 'd7f71f28449665f9eefc114e5e7d3e7b', 30, 1),
(274, '13748', 'ACHMAD RIZKY PRADIPTA', 'Jl. Inpres RT 008/05 No. 34 Kelapa Dua Kebon Jeruk Jak-Bar\r\n', '082122044829', '696732fbfd6231bac5df185fae52e8ce', 30, 1),
(275, '13749', 'ACHMAD ZEN', 'Jl. H. Saili ujung Kemanggisan RT 04/006 No. D38C Kemanggisan Palmerah Jak-Bar\r\n', '081293231754', '396f2f40f528b0bcfeb546b915917247', 30, 1),
(276, '13782', 'ADI ISWANTO SETYO NUGROHO', 'Jl. Rawa Buaya RT 006/02 No. 265 Rawa Buaya Cengtkareng Jak-Bar\r\n', '085213825274', '5655cf23be4dda7082c8bb3a8d8f8016', 30, 1),
(277, '13783', 'ADITYA DEVRIANSYACH', 'Jl. Nusa Indah RT 007/12 No. 4 Rawa Buaya Cengkareng Jak-Bar\r\n', '089514394855', '58ab5c05ec8dfa3e35a22dfe717da10e', 30, 1),
(278, '13785', 'AHMAD BAIHAKI NUR', 'JL. KH. Hasyim Pondok Cabe RT 005/09 Kembangan Utara Jak-Bar\r\n', '0812938803.24', '9d0fd14c56f15732cb894bec23bd6a13', 30, 1),
(279, '13750', 'AHMAD SUKRON', 'Jl. Jomas Kp. Sanggrahan RT 006/005 No. 18 Meruya Utara Kembangan Jak-Bar\r\n', '081646885065', '64357314e1c294fca2c6419e6b6d59af', 30, 1),
(280, '13786', 'AKBAR RAMADHAN', 'Jl. H. Kelik RT 008/06 No. 165 Srengseng Kembangan Jak-Bar\r\n', '08129347582', '4c038c24158aa04f63a0ddf71c462716', 31, 1),
(281, '13751', 'ALIF FIRDAUS', 'Jl. Kecapi RT 006/010 Meruya Utara Kembangan Jak-Bar\r\n', '081386316242', '72a6d73ab903ffb7b81f5fc679103a7e', 31, 1),
(282, '13752', 'ALVIANTO HANDIKA PURNOMO', 'Jl. H. Jairi RT 005/02 No. 160 Rawa Buaya Cengkareng Jak-Bar\r\n', '085218625636', 'aded6ee2a29750522670aad156b654bd', 31, 1),
(283, '13753', 'ANDRY SETYAWAN', 'Jl. Masjid Al-Alawiyah RT 011/05 No. 26 Srengseng Kembangan Jak-Bar\r\n', '089629876763', '16b0ad329cb228a9007353d31da0dad5', 31, 1),
(284, '13754', 'ARYA FREDI IRAWAN', 'Jl. Kesatuan I Bojong Kapling RT 016/004 Rawa Buaya Cengkareng Jak-Bar\r\n', '081514732010', '2b9977c8d7c6e4217bb29e2f2a2eafc1', 31, 1),
(285, '13755', 'AZIS SUSILO', 'Jl. Masjid At-Taqwa RT 004/08 No. 44 Kembangan Utara Jak-Bar\r\n', '081298367377', 'fa3ac9e7b5e2ed174bc1104f1c9ec9b6', 31, 1),
(286, '13756', 'BAGAS SEPIHAN DWI PANCA', 'Jl. Inpres RT 008/05 No. 25 Kelapa Dua Kebon Jeruk Jak-Bar\r\n', '081225354582', '323e403f79d8cdb24a2480338f6ea9d6', 31, 1),
(287, '13788', 'DANANG RAMADHAN ARIANTO', 'Jl. Suma Menanti RT 006/011 No. 10B Klingkit Rawa  Buaya Cengkareng Jak-Bar\r\n', '085899984351', 'b34e2442144b3750a1e533d4e6cc468b', 31, 1),
(288, '13789', 'DEDE SAPUTRO', 'Jl. Swadarma Raya RT 07/03 No. 83 Srengseng Kembangan Jak-Bar\r\n', '087881381287', '55c11616b1aeb14d5166f02b07e17eb7', 31, 1),
(289, '13790', 'DENNI ANDIKA', 'Jl. Sulaiman RT 004/04 No. 11 Palmerah Jak-Bar\r\n', '081296378727', 'b270a720f6ac2e8a8c53d968243d5971', 31, 1),
(290, '13942', 'MUHAMMAD ARI FAHLEVI', 'JL. ILYAS SUKABUMI UTARA', '083807670522', '5a2cb441c18f6535a9fb765251345d0f', 33, 1),
(291, '13873', 'MUHAMMAD DAVA SYAIRA', 'JL. DAUD SUKABUMI UTARA', '081272143190', '827cf4bc2f28f73e24c151cad3be7567', 33, 1),
(292, '13843', 'MUHAMMAD FIRMANSYAH', 'JL. H. SAABA JOGLO KEMBANGAN', '085779995056', '9181a74736d3b86345dadbc90e29390e', 33, 1),
(293, '13874', 'MUHAMMAD IBRAHIM', 'JL. H. ZUHRI MERUYA SELATAN', '081380861832', '18fc3b6cc1e55ccea877c161e2e9ba27', 33, 1),
(294, '13875', 'MUHAMMAD IKHSAN NUGRAHA', 'JL. MIRAH TAMAN MERUYA ILIR', '081310502744', '807c2fa13d210319043db7c80d7cfb00', 33, 1),
(295, '13844', 'MUHAMMAD IQBAL', 'JL. LAPANGAN TENIS MERUYA UTARA', '085819653440', '2a3e953a5e3d81e67945bce5519f84c8', 33, 1),
(296, '13876', 'MUHAMMAD JIHAN FIRMANSYAH', 'JL. PULO KEMI=UNING GROGOL', '081386221613', '25e2d0317e892210f0bfed6b1a96d1e6', 33, 1),
(297, '13877', 'MUHAMMAD RAMDANI', 'JL. H. DOMANG KEBON JERUK', '081285600895', 'e7a29a17f7144e9bf52932fc7c6f9f92', 33, 1),
(298, '13845', 'MUHAMMAD RIZKI', 'JL. H. ALIMUN KELAPA DUA', '021-5361639', '4c0303ffb193bd5e66078909a15268aa', 33, 1),
(299, '13878', 'MUHAMMAD RIZKI FAZRI', 'JL. DELIMA SRENGSENG KEMBANGAN', '087720673347', '9596fef7e29086a6ab33b42e326c9a73', 33, 1),
(300, '13905', 'MUHAMMAD SADUDDIN', 'JL. PERJUANGAN KEBON JERUK', '08128672555', '3fc90b8360ec984bca9ef733dc3cb612', 34, 1),
(301, '13846', 'MURSIDIN', 'JL. KAMPUNG BUGIS KEMBANGAN UTARA', '08388670996', '3fc90b8360ec984bca9ef733dc3cb612', 34, 1),
(302, '13907', 'NIZAMIYAH AULIA PUTRI', 'JL. H. BERIT MERUYA UTARA', '08988949831', '3fc90b8360ec984bca9ef733dc3cb612', 34, 1),
(303, '13943', 'NOUVAL SHOBRI', 'JL. PETAMBURAN TANAH ABANG', '0895333398179', '2dc8bd91d566cac1abc88917ca71e1ee', 34, 1),
(304, '13879', 'NOVAL ARDIANSYAH', 'JL. MUSHOLLA KELAPA DUA', '123456', '5c0c3007f1af27e1191082e12a27b0b8', 34, 1),
(305, '13944', 'NURUL MAWADDAH', 'JL. PANJANG KEBON JERUK', '082244345923', '6a1ee3f23287b452bfc735ea0381ddc5', 34, 1),
(306, '13908', 'OPIN SOPIAH', 'JL. PINTU AIR KEDOYA SELATAN', '08567311227', '5da9942da9fb4fe0d77eb32bd6165e43', 34, 1),
(307, '13881', 'RAHMAT FAJAR JULYAN', 'JL. PAHLAWAN SUKABUMI SELATAN', '081386436816', '114cdac531f509e3ab04a2caade973bb', 34, 1),
(308, '13909', 'RADEN MUHAMMAD APRIYANSYA', 'JL. KAMPUNG PLUIS GROGOL', '083124068118', 'b42a32350172cd36370226a103aae213', 34, 1),
(309, '13945', 'RANGGA FEBRIO VALENTINO', 'JL. MERUYA SELATAN', '089690110297', 'c413f7f539f39425597705c9142a94b0', 34, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `soal`
--

CREATE TABLE `soal` (
  `id_soal` int(11) NOT NULL,
  `tingkat_kelas` varchar(2) NOT NULL,
  `pertanyaan` varchar(250) NOT NULL,
  `pilihan1` varchar(250) NOT NULL,
  `pilihan2` varchar(250) NOT NULL,
  `pilihan3` varchar(250) NOT NULL,
  `pilihan4` varchar(250) NOT NULL,
  `jawaban` varchar(1) NOT NULL,
  `status` varchar(10) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `soal`
--

INSERT INTO `soal` (`id_soal`, `tingkat_kelas`, `pertanyaan`, `pilihan1`, `pilihan2`, `pilihan3`, `pilihan4`, `jawaban`, `status`, `id_guru`, `id_mapel`) VALUES
(8, '10', 'Teks yang berisi penjabaran umum mengenai sesuatu yang didasarkan pada hasil observasi disebut....', 'teks eksposisi', 'teks anekdot', 'teks laporan hasil observasi', 'teks negosiasi', '3', 'DISETUJUI', 1, 1),
(9, '10', 'Yang merupakan struktur teks laporan hasil observasi, yaitu....', 'Orientasi', 'Pernyataan umum atau klasifikasi', 'Anggota atau aspek yang dilaporkan', 'A dan B benar', '2', 'DISETUJUI', 1, 1),
(10, '10', 'Perhatikanlah kutipan paragraf  berkut!\r\nBenda di dunia dapat dikelompokkan atas persamaan dan perbedaannya. Dengan pengelompokan, benda-benda itu lebih mudah dipelajari.\r\n\r\nKutipan paragraf diatas merupakan salah satu bagian struktur teks laporan ha', 'Pernyataan umum atau klasifikasi', 'Anggota atau aspek yang dilaporkan', 'Orientasi', 'Reaksi', '1', 'DISETUJUI', 1, 1),
(11, '10', 'Yang tidak termasuk dalam ciri-ciri teks laporan hasil observasi, yaitu....', 'Harus mengandung fakta', 'Harus objektif', 'Harus lengkap', 'Memasukkan hal-hal yang bersifat memihak', '2', 'DISETUJUI', 1, 1),
(12, '10', 'Memasukkan hal-hal yang bersifat memihak', 'Sebagai sumber informasi', 'Sebagai media hiburan', 'Sebagai media provokasi', 'Membuat bingung', '3', 'DISETUJUI', 1, 1),
(13, '10', 'Kata hubung yang menunjukkan adanya proses yang berlangsung atau penandaan urutan waktu ialah di bawah ini, kecuali...', ' setelah itu', 'selanjutnya', 'kemudian', 'untuk itu', '3', 'DISETUJUI', 1, 1),
(14, '10', 'Bacalah kutipan teks laporan observasi berikut\r\n...\r\nDalam kemangi terdapat vitamin A, B, dan C serta kandungan bahan antiseptik yang menyembuhkan jerawat dengan cepat. Antiseptik di dalamnya akan membunuh bakteri serta memperlancar peredaran darah d', 'Berupa deskripsi tentang kandungan bahan antiseptik.', 'Berupa deskripsi tentang kemangi.', 'Berupa deskripsi tentang vitamin dan kandungan kemangi.', 'Berupa deskripsi tentang vitamain A dan B.', '4', 'DISETUJUI', 1, 1),
(15, '10', 'Di bawah ini yang merupakan kalimat simpleks adalahâ€¦.', ' Yeni dimarahi oleh ayah, karena dia tidak belajar.', 'Yuli membawa dan menyimpan makanan itu.', 'Harimau mudah menyesuaikan diri dengan lingkungannya.', 'Yuli dan Yeni mengamati  harimau yang sedang makan di kandangnya.', '3', 'DISETUJUI', 1, 1),
(16, '10', 'Bagian akhir dari sebuah teks eksposisi yang berupa penguatan kembali atas pendapat yang telah ditunjang oleh fakta-fakta dalam bagian argumentasi.\r\n\r\nDisebut apa struktur teks eksposisi yang dimaksud â€¦.', 'Pernyataan pendapat (tesis)', 'Argumentasi', 'Contoh', 'Fakta', '2', 'DISETUJUI', 1, 1),
(17, '10', 'Bacalah teks eksposisi berikut!\r\nTeh hijau dapat berfungsi menjaga kesehatan kulit secara alami. Hal tersebut dikarenakan teh hijau dapat melindung kulit kita dari sengatan sinar ultraviolet sehingga secara tidak langsung dengan sering mengkonsumsi t', 'Teh hijau berfungsi menjaga kesehatan kulit', ' Teh hijau melindungi kulit dari sengatan sinar ultraviolet.', 'Teh hijau mampu membuat kulit tidak cepat keriput.', 'Teh hijau menjaga kesehatan tubuh.', '2', 'DISETUJUI', 1, 1),
(18, '10', 'Berikut ini yang termasuk struktur teks eksposisi adalah....', 'Pernyataan ide, alasan, dan penegasan ulang', 'Penyataan pendapat (tesis), argumentasi, dan penegasan ulang', 'Penyataan, contoh-contoh, dan pertanyaan-pertanyaan', 'Orientasi, aspek yang dilaporkan', '2', 'DISETUJUI', 1, 1),
(19, '10', 'Teks yang berisi penjabaran umum mengenai sesuatu yang didasarkan pada hasil observasi disebut ....', 'teks anekdot', 'teks eksposisi', 'teks negosiasi', 'teks prosedur kompleks', '2', 'DISETUJUI', 1, 1),
(20, '10', 'Teks eksposisi adalah ....', 'teks yang berisi cerita atau informasi terkin', 'teks yang bertujuan untuk memengaruhi pembaca', 'teks yang bertujuan untuk memengaruhi pembaca', 'teks yang menjelaskan atau memaparkan sesuatu secara runtut', '3', 'DISETUJUI', 1, 1),
(21, '10', 'Benda di dunia dapat dikelompokkan atas perbedaan dan persamaannya. Dengan pengelompokan, benda-benda itu lebih mudah dipelajari.\r\n\r\nKutipan paragraf di atas merupakan salah satu bagian struktur teks laporan hasil observasi yaitu ....', 'krisis', 'reaksi', 'orientasi', 'pernyataan umum atau klasifikasi', '2', 'DISETUJUI', 1, 1),
(22, '10', 'Benda di dunia dapat dikelompokkan atas perbedaan dan persamaannya. Dengan pengelompokan, benda-benda itu lebih mudah dipelajari.\r\n\r\nKutipan paragraf di atas merupakan salah satu bagian struktur teks laporan hasil observasi yaitu ....', 'krisis', 'reaksi', 'orientasi', 'pernyataan umum atau klasifikasi', '2', 'DISETUJUI', 1, 1),
(23, '10', 'Jenis pengembangan teks eksposisi yang rinciannya tergolong dalam suatu objek ke dalam bagian-bagian itu disebut jenis pengembangan â€¦.', 'definisi', 'verifikasi', 'klasifikasi', 'aktualisasi', '3', 'DISETUJUI', 1, 1),
(24, '10', 'Sebuah karangan yang mengandung informasi atau pengetahuan disebut â€¦', 'karangan teks eksposisi', 'karangan teks ilmiah', 'karangan teks skripsi', 'karangan teks penelitian', '1', 'DISETUJUI', 1, 1),
(25, '10', 'Sebuah kata ganti orang yang dapat digunakan terutama pada saat pernyataan pendapat pribadi diungkapkan disebut â€¦.', 'leksikal', 'klasikal', 'konjungsi', 'pronomina', '4', 'DISETUJUI', 1, 1),
(26, '10', 'Dalam jenis karangan teks eksposisi, terdapat jenis yang memiliki pengertian sebagai pemapar atau penjelas dari defini suatu topik tertentu disebut â€¦.', 'teks eksposisi proses', 'teks eksposisi definisi', 'teks eksposisi laporan', 'teks eksposisi ilustrasi', '2', 'DISETUJUI', 1, 1),
(27, '10', 'Berikut ini adalah struktur lain yang ada dalam teks laporan observasi, kecuali â€¦', 'definisi pembuka', 'definisi umum', 'definisi penutup', 'definisi bagian', '1', 'DISETUJUI', 1, 1),
(28, '10', 'Tujuan dari teks laporan obeservasi adalah â€¦', 'Menemukan teknik atau cara terbaru', 'sebagai bahan penelitian ilmiah', 'mencari sampel masalah', 'jawaban a, b dan c benar semua', '1', 'DISETUJUI', 1, 1),
(29, '10', 'Jenis-jenis kalimat yang biasa digunakan dalam pembuatan teks laporan hasil observasi, kecualiâ€¦.', 'kalimat deskripsi', 'kalimat simple', 'kalimat kompleks', 'kalimat tanya', '4', 'DISETUJUI', 1, 1),
(30, '10', 'Bacalah teks berikut dengan cermat!\r\n\r\nAir yang berasal dari laut dan tumbuhan dapat diuapkan oleh sinar matahari. Setelah diuapkan, hasil uapan tersebut akan naik keatas sehingga terjadinya penggumpalan uap air yang biasa disebut awan. Kemudia awan ', 'teks deskripsi', 'teks laporan ilmiah', 'teks laporan observasi', 'teks laporan eksposisi', '4', 'DISETUJUI', 1, 1),
(31, '10', 'Salah satu fungsi dari hasil teks laporan obeservasi adalah â€¦.', 'merupakan pembukaan awal untuk mencari informasi', 'bukan sumber informasi utama', 'merupakan bahan untuk pendokumentasian', 'merupakan hasil analisis dari teks laporan', '3', 'DISETUJUI', 1, 1),
(32, '10', 'Informasi yang dihadirkan dari hasil observasi dan analisis secara sistematis adalah â€¦.', 'teks observasi', 'teks definisi', 'teks kesimpulan', 'teks hasil laporan', '4', 'DISETUJUI', 1, 1),
(33, '10', 'Dalam pembuatan teks laporan, kita harus memperhatikan salah satunya tentang aspek kebahasaan, seperti dalam penggunaan â€¦.', 'kelas kata', 'kalimat', 'hubungan antarkalimat', 'hubungan antarparagraf', '1', 'DISETUJUI', 1, 1),
(34, '10', 'Salah satu tujuan seorang penulis menggunakan tabel dalam tulisannya yaitu â€¦.', 'sebagai penerang bahwa kejadian benar-benar ada', 'sebagai penguat atas bukti bahwa peristiwa benar-benar terjad', 'sebagai bahan untuk bisa meyakinkan suatu pendapat', 'sebagai gambaran suatu keadaan sebagaimana yang benar-benar terjadi', '4', 'DISETUJUI', 1, 1),
(35, '10', 'Teks eksposisi dapat kita jumpai pada media-media salah satunya yaitu â€¦.', 'televisi', 'koran', 'radio', 'handphone', '2', 'DISETUJUI', 1, 1),
(36, '10', 'Arti sifat opsional dalam teks eksposisi mengandung arti â€¦.', 'wajib ada dalam suatu teks eksposisi', 'tidak wajib ada dalam suatu teks ekspoisi', 'boleh ada dan boleh juga tidak ada dalam suatu teks eksposisi', 'topik dalam teks boleh menyerupai ringkasan materi', '3', 'DISETUJUI', 1, 1),
(37, '10', 'Bagaimana penegasan penulis pada bab epilog dalam sebuah teks eksposisi â€¦.', 'sama', 'samar-samar', 'jelas', 'berbeda', '3', 'DISETUJUI', 1, 1),
(38, '10', 'Negosiasi adalah â€¦.', 'wujud interaksi sosial yang bertujuan untuk mencari kesepakatan bersama dari kedua belah pihak', 'perdebatan antara pihak satu dengan pihak lain', 'penggambaran suatu masalah sesuai dengan kejadian yang terjadi', 'kesimpulan teks deskriptif', '1', 'DISETUJUI', 1, 1),
(39, '10', 'Mencapai suatu kesepakatan dari kedua belah pihak yang saling menguntungkan, merupakan â€¦.', 'manfaat negosiasi', 'manfaat diplomasi', 'tujuan interaksi', 'tujuan negosiasi', '4', 'DISETUJUI', 1, 1),
(40, '10', 'Terciptanya suatu kesepakatan antara kedua belah pihak yang saling menguntungkan, merupakan â€¦. negosiasi', 'manfaat', 'tujuan', 'definisi', 'unsur', '1', 'DISETUJUI', 1, 1),
(41, '10', 'Salah satu hal yang harus adalam negosiasi adalah â€¦.', 'pembuka', 'nama lengkap', 'identitas', 'lampiran', '1', 'DISETUJUI', 1, 1),
(42, '10', 'Dalam teks negosiasi, isi yang memuat tentang pengenalan diri serta salam dan sapa terdapat dalam â€¦.', 'penutupan', 'proses', 'pembuka', 'kesepakatan', '3', 'DISETUJUI', 1, 1),
(43, '10', 'Adu argumen antara kedua belah pihak atau lebih baik itu kelompok atau individu disebut â€¦.', 'negosiasi', 'interaksi', 'perdebatan', 'perjanjian', '3', 'DISETUJUI', 1, 1),
(44, '10', 'Tujuan debat adalah untuk â€¦.', 'melatih diri untuk selalu bersikap kritis dalam setiap permasalahan perdebatan', 'mencari kepuasan diri atau masing-masing kelompok', 'melemahkan pemahaman dari materi perdebatan', 'memperbanyak musuh debat', '1', 'DISETUJUI', 1, 1),
(45, '10', 'Materi, personalia dan fasilitas debat merupakan â€¦.', 'unsur-unsur debat', 'ciri-ciri debat', 'pengertian debat', 'struktur debat', '1', 'DISETUJUI', 1, 1),
(46, '10', 'Fungsi panelis dalam sebuah debat adalah â€¦.', 'sebagai penilai materi debat', 'sebagai juri perdebatan', 'sebagai peserta cadangan dalam debat', 'sebagai pendukung dari masing-masing kelompok debat', '1', 'DISETUJUI', 1, 1),
(47, '10', 'Membuat kerangka atau bagan untuk sebuah acara perdebatan merupakan tugas dari â€¦.', 'peserta debat itu sendiri', 'panelis', 'moderator', 'narasumber', '3', 'DISETUJUI', 1, 1),
(48, '10', 'Syarat untuk memilih seseorang calon moderator adalah salah satunya calon moderator tersebut harus yangâ€¦.', 'cerdas dan pintar', 'boleh mengambil dari salah satu pendukung peserta debat', 'netral dan tidak memihak antara kedua belah pihak debat', 'pandai membuat suasana menjadi memanas', '3', 'DISETUJUI', 1, 1),
(49, '10', 'Ada beberapa jenis debat. salah satunya yaitu yang dilakukan oleh anggota parlemen yaitu jenis debat â€¦.', 'formal', 'terencana', 'terstruktur', 'memiliki aturan khusus', '1', 'DISETUJUI', 1, 1),
(50, '10', 'Dalam menyusun kerangka debat, kerangka tersebut harus â€¦.', 'acak-acakan biar membingungkan', 'acak-acakan biar membingungkan', 'terorganisir', 'adanya tanya jawab dengan narasumber', '2', 'DISETUJUI', 1, 1),
(51, '10', 'Sesuatu yang dilarang dalam jalannya debat adalah â€¦.', 'memberikan keluasan waktu kepada lawan debat', 'melawan dewan juri', 'berdiskusi dengan lawan debat', 'tidak menghina atau mencaci lawan debat', '2', 'DISETUJUI', 1, 1),
(52, '10', 'Sesorang yang dianggap memiliki pengetahuan lebih terhadap suatu masah yang diperdebatkan disebut â€¦.', 'moderator', 'narasumber', 'peserta debat', 'penonton', '2', 'DISETUJUI', 1, 1),
(53, '10', 'Langkah pertama dalam membuat teks laporan hasil observasi adalah ....', 'menyusun isi', 'menulis surat', 'membuat judul', 'membuat kalimat penutup', '1', 'DISETUJUI', 1, 1),
(54, '10', 'Bagian teks laporan hasil observasi yang berisi gambaran tentang sesuatu secara rinci adalah ....', 'diskusi', 'klasifikasi', 'identifikasi', 'deksripsi bagian', '3', 'DISETUJUI', 1, 1),
(55, '10', 'Yang tidak termasuk dalam ciri-ciri teks laporan hasil observasi yaitu ....', 'harus objektif', 'harus lengkap', 'harus mengandung fakta', 'susunannya logis', '4', 'DISETUJUI', 1, 1),
(56, '10', ' Yang merupakan struktur teks laporan hasil observasi yaitu ....', 'orientasi', 'pernyataan umum atau klarifikasi', 'anggota atau aspek yang dilaporkan', 'A dan B benar', '3', 'DISETUJUI', 1, 1),
(57, '10', 'Tahukah Anda ternyata yoghurt sangat bagus untuk kesehatan kulit? Yoghurt bisa dimanfaatkan untuk masker kulit. Caranya sangat mudah. Anda hanya tinggal menyediakan beberapa sendok yoghurt kemudian oleskan pada kulit. Lanjutkan secara rutin seminggu ', 'runtut', 'mengajak pembaca', 'memaparkan sesuatu', 'logis dan sesuai nalar', '4', 'DISETUJUI', 1, 1),
(58, '10', 'Arti fana adalah....', 'kekal', 'tidak kekal', 'abadi', 'selamanya', '2', 'DISETUJUI', 8, 6),
(59, '10', 'Allah memiliki sifat Al Karim, artinya Allah Maha', 'Pemberi keamanan', 'Mulia', 'Akhir', 'Kokoh', '2', 'DISETUJUI', 8, 6),
(60, '10', 'Allah memiki sifat Al Karim, yang tercantum dalam surah....', 'Allah memiki sifat Al Karim, yang tercantum dalam surah....', 'Al Aâ€™raf ayat 180', 'An Naml ayt 40', 'Taha ayat 8', '3', 'DISETUJUI', 8, 6),
(61, '10', 'Allah memiliki sifat Al Matin, artinya Allah Maha....', 'Pemberi Keamanan', 'Mulia', 'Adil', 'Kokoh', '4', 'DISETUJUI', 8, 6),
(62, '10', 'Allah memiliki sifat Al Matin, yang tercantum dalam surath..', 'Az Zariyat ayat 58', 'Al Hadid ayat 3', 'Al Aâ€™raf ayat 180', 'An Naml ayat 40', '1', 'DISETUJUI', 8, 6),
(63, '10', 'Allah memiliki sifat Al Matin, yang tercantum dalam surath..', 'Az Zariyat ayat 58', 'Al Hadid ayat 3', 'Al Aâ€™raf ayat 180', 'An Naml ayat 40', '1', 'DISETUJUI', 8, 6),
(64, '10', 'Salah satu Asmaul Husna adalah Al â€˜Adl yang artinya adalah....', 'Maha Mengumpulkan', 'Mahaadil', 'Mahakuasa', 'Maha Pengasih', '2', 'DISETUJUI', 8, 6),
(65, '10', 'Allah Maha Mengumpulkan merupakan arti dari....', 'Al Jamiâ€™', 'Al â€˜Adl', 'Al Akhir', 'Al â€˜Azim', '1', 'DISETUJUI', 8, 6),
(66, '10', 'Sifat adil Allah berlaku untuk...', 'semua orang', 'orang kaya saja', 'para pejabat', 'orang miskin', '1', 'DISETUJUI', 8, 6),
(67, '10', 'Salah satu Asmaul Husna adalah Al Akhir yang artinya adalah....', 'Maha Esa', 'Maha Adil', 'Maha Akhir', 'Maha Kuasa', '3', 'DISETUJUI', 8, 6),
(68, '10', 'Adanya Asmaul Husna diterangkan dalam Al-Qurâ€™an surah....', 'Taha ayat 6', 'Taha ayat 7', 'Taha ayat 8', 'Taha ayat 9', '3', 'DISETUJUI', 8, 6),
(69, '10', 'Batasan aurat perempuan adalah....', 'dari siku sampai lutut', 'seluruh tubuh kecuali wajah dan telapak tangan', 'dari pusat sampai lutut', 'dari pusat sampai lutut', '2', 'DISETUJUI', 8, 6),
(70, '10', 'Pakaian adalah....', 'Identitas seorang manusia', 'harta seorang manusia', 'harga seorang manusia', 'kekayaan seorang manusia', '1', 'DISETUJUI', 8, 6),
(71, '10', 'Dalam Islam pakaian harus....', 'mahal dan bagus', 'mewah dan menarik', 'bersih, rapi, dan sopan', 'mewah dan bersih', '3', 'DISETUJUI', 8, 6),
(72, '10', 'Sebelum berpakaian hendaknya kita....', 'berdoa', 'bercermin', 'berhias', 'mandi', '1', 'DISETUJUI', 8, 6),
(73, '10', 'Ketika hendak berpakaian, maka mulailah dengan bagian tubuh sebelah....', 'atas', 'bawah', 'kanan', 'kiri', '3', 'DISETUJUI', 8, 6),
(74, '10', 'Bagian tubuh yang tidak boleh diperlihatkan menurut ajaran Islam disebut...', ' hiasan', 'pakaian', 'gamis', 'aurat', '4', 'DISETUJUI', 8, 6),
(75, '10', 'Surah yang menjelaskan tentang larangan untuk melakukan berapakain, makan, dan minum secara berlebihan adalah...', 'Q.S. Al Aâ€™raf [7]: 31', 'Q.S. Al Aâ€™raf [7]: 32', 'Q.S. Al Aâ€™raf [7]: 33', 'Q.S. Al Aâ€™raf [7]: 34', '1', 'DISETUJUI', 8, 6),
(76, '10', 'Menurut surah Al Aâ€™raf ayat 26 pakaian yang paling baik di mata Allah SWT, adalah....', 'pakaian adat', 'pakaian Arab', 'pakaian gamis', 'pakaian taqwa', '4', 'DISETUJUI', 8, 6),
(77, '10', 'Batasan aurat laki-laki adalah....', 'dari siku sampai lutut', 'dari pusat sampai lutut', 'dari leher sampai pergelangan kaki', ' seluruh tubuh kecuali wajah dan telapak kaki', '2', 'DISETUJUI', 8, 6),
(78, '10', 'Fungsi pakaian adalah....', 'untuk dipamerkan', 'meningkatkan gengsi', 'sebagai penutup aurat', 'menampilkan lekuk tubuh', '3', 'DISETUJUI', 8, 6),
(79, '10', 'Jujur merupakan ciri seorang muslim, sedangkan bohong atau  tidak jujur merupakan ciri dari....', 'mu in', 'muhsin', 'muttaqin', 'munafiq', '4', 'DISETUJUI', 8, 6),
(80, '10', 'Berikut yang tidak termasuk akhlak terpuji adalah....', 'Berikut yang tidak termasuk akhlak terpuji adalah....', 'jujur', 'percaya diri', 'hidup sederhana', '1', 'DISETUJUI', 8, 6),
(81, '10', 'Bersikap apa adanya dinamakan....', 'percaya diri', 'rajin', 'boros', 'jujur', '4', 'DISETUJUI', 8, 6),
(82, '10', 'Orang jujur akan berkata....', 'benar', 'salah', 'seenaknya', 'marah', '1', 'DISETUJUI', 8, 6),
(83, '10', 'Orang yang berbuat jujur perbuatannya selalu...', 'berbalik', 'berliku', 'berbelok', 'lurus', '4', 'DISETUJUI', 8, 6),
(84, '10', 'Lawan jujur adalah....', 'riya', 'munafiq', 'dusta', 'khianat', '3', 'DISETUJUI', 8, 6),
(85, '10', 'Orang yang suka berbohong termasuk orang....', 'muslim', 'syirik', 'munafiq', 'murtad', '3', 'DISETUJUI', 8, 6),
(86, '10', 'Mengerjakan tugas tepat waktu disebut....', 'jujur', 'rajin', 'optimis', 'disiplin', '4', 'DISETUJUI', 8, 6),
(87, '10', 'Rasulullah SAW. selalu berkata....', 'bohong', 'jujur', 'munafiq', 'dusta', '2', 'DISETUJUI', 8, 1),
(88, '10', 'Perilaku baik yang dimiliki manusia disebut....', 'akhlak tercela', 'akhlak terpuji', 'ibadah', 'akhlak khabisah', '2', 'DISETUJUI', 8, 6),
(89, '10', 'Sifat dasar hukum Al-Qur an adalah keseimbangan dari segi kebendaan dan kejiwaan yang disebut....', 'takamul', 'wasatiyyah', 'harakah', 'adil', '2', 'DISETUJUI', 8, 6),
(90, '10', 'Al-Qur an diawali dengan surat Al Fatihah (pembukaan) dan diakhiri dengan surah....', 'Al Baqarah', 'Al Falaq', 'Al Maâ€™idah', 'An Nas', '4', 'DISETUJUI', 8, 6),
(91, '10', 'Al-Qur an adalah pedoman bagi manusia petunjuk dan rahmat bagi kaum yang meyakini. Hal ini ditegaskan Allah dalam surah....', 'Al Jasiyah [45]: 20', 'Ali Imran [3]: 138', 'Al Jasiyah [45]: 45', 'Ali Imran[3]: 13', '1', 'DISETUJUI', 8, 6),
(92, '10', 'Al-Qur an berfungsi sebagai Hudan yang artinya....', 'hiasan', 'petunjuk', 'penerang', 'penyempurna', '2', 'DISETUJUI', 8, 6),
(93, '10', 'Dalam surah Al Baqarah ayat 2 Allah berfirman bahwa Al-Qur an merupakan petunjuk bagi...', 'munafiqin', 'musyrikin', 'mukhlisin', 'muttaqin', '4', 'DISETUJUI', 8, 6),
(94, '10', 'Al-Qur an berfungsi sebagai mauizah. Hal ini terdapat dalam surah....', 'Al Jasiyah [45]:20', 'Ali Imran [3]: 138', 'Al Jasiyah [45]: 45', 'Ali Imran [3]: 13', '2', 'DISETUJUI', 8, 6),
(95, '10', 'Hukum Islam tentang waris ada secara lengkap dalam....', 'Al-Qur an', 'Hadist', 'ijma ulama', 'qiyas', '1', 'DISETUJUI', 8, 6),
(96, '10', 'Hukum yang mengatur hubungan manusia dengan Allah secara lahiriah, manusia dengan sesama manusia, dan manusia dengan lingkungan sekitarnya disebut hukum....', 'amaliyah', 'jinayah\r\n', ' i tiqadiyah', 'khuluqiyah', '1', 'DISETUJUI', 8, 6),
(97, '10', 'Hukum yang berkenaan dengan perilaku akhlak manusia dalam kehidupan disebut hukum....', 'amaliyah', 'jinayah', 'i tiqadiyah', 'khuluqiyah', '4', 'DISETUJUI', 8, 6),
(98, '10', 'Sumber hukum yang tertinggi dalam Islam adalah....', 'Al Qur an', 'Sunnah', 'Ijtihad', 'Qiyas', '1', 'DISETUJUI', 8, 6),
(99, '10', 'Menurut macam periwayatannya hadits dibagi menjadi.... macam.', 'enam', 'lima', 'empat', 'dua', '4', 'DISETUJUI', 8, 6),
(100, '10', 'Hadits merupakan mubayyin bagi Al-Qur an. Arti mubayyin adalah....', 'penjelas', 'penyempurna', 'pelengkap', 'penterjemah', '1', 'DISETUJUI', 8, 6),
(101, '10', 'Sumber hukum kedua dalam menetapkan hukum setelah Al-Qur an adalah...', 'ijtihad', 'hadits', 'qiyas', 'fatwa ulama', '2', 'DISETUJUI', 8, 6),
(102, '10', 'Hukum mengunakan hadits sebagai landasan hukum adalah...', 'haram', 'sunnah', 'makruh', 'wajib', '4', 'DISETUJUI', 8, 6),
(103, '10', 'Orang yang meriwayatkan hadits disebut...', 'sanad', 'rawi', 'sahabat', 'tabi in', '2', 'DISETUJUI', 8, 6),
(104, '10', 'Imam At Tirmidzi membagi hadits ahad menjadi....', 'dua macam', 'tiga macam', 'empat macam', 'lima macam', '2', 'DISETUJUI', 8, 6),
(105, '10', 'Hukum menggunakan hadits maudu adalah....', 'wajib', 'sunnah', 'makruh', 'haram', '4', 'DISETUJUI', 8, 6),
(106, '10', 'Berikut merupakan hadits yang terputus sanadnya, kecuali...', 'hadits mu allaq', 'hadits mursal', 'hadits dhaif', 'hadits mu dal', '1', 'DISETUJUI', 8, 6),
(107, '10', 'Arti dari maudu adalah....', 'dilarang', 'ditinggalkan', 'diharamkan', 'terputus', '1', 'DISETUJUI', 8, 6),
(108, '10', 'Hukum mengingkari hadits adalah....', 'wajib', 'sunnah', 'makruh', 'haram', '4', 'DISETUJUI', 8, 6),
(109, '10', 'Badan Kependudukan dan Keluarga Berencana Nasional berada di bawah koordinasi menteri....', 'Kesehatan', 'Pendayagunaan Aparatur Negara dan Reformasi Birokrasi', 'Koordinator Bidang Perekonomian', 'Pemberdayaan Perempuan dan Perlindungan Anak', '1', 'DITOLAK', 5, 12),
(110, '10', 'Menurut Zul Afdi Ardian, pada hakikatnya pembagian kekuasaan dapat dibagi dalam dua cara, yaitu secara....', 'vertikal dan horizontal', 'sentralisasi dan desentralisasi', 'legislatif dan eksekutif', 'legislatif dan yudikatif', '1', 'DITOLAK', 5, 12),
(111, '10', ' Kekuasaan untuk membuat undang-undang disebut kekuasaan....', 'yudikatif', 'eksekutif', 'legislatif', 'parlementer', '3', 'DISETUJUI', 5, 12),
(112, '10', 'Kekuasaan untuk melaksanakan undang-undang disebut kekuasaan....', 'yudikatif', 'eksekutif', 'legislatif', 'parlementer', '2', 'DISETUJUI', 5, 12),
(113, '10', 'Landasan hukum kementerian Negara Republik Indonesia adalah....', 'pasal 17 UUD 1945', 'pasal 18 UUD 1945', 'pasal 19 UUD 1945', 'pasal 20 UUD 1945', '1', 'DISETUJUI', 5, 12),
(114, '10', 'Di bawah ini yang merupakan kementerian yang mengatur urusan pemerintahan yang nomenklatur/nama kementeriannya secara tegas disebut dalam UUD Negara Republik Indonesia Tahun 1945 adalah....', 'Kementerian Hukum dan HAM', 'Kementerian Keuangan', 'Kementerian Perindustrian', 'Kementerian Pertahanan', '4', 'DISETUJUI', 5, 12),
(115, '10', 'Lembaga pemerintah nonkementerian yang mengurusi masalah kependudukan dan keluarga berencana yaitu....', 'ANRI', 'BKKBN', 'BKPN', 'BMKG', '2', 'DISETUJUI', 5, 6),
(116, '10', 'Kementrian yang bertugas melakukan sinkronisasi dan koordinasi urusan kementerian-kementerian yang berada di dalam lingkup tugasnya disebut....', 'Kementerian Dalam Negeri', ' Kementerian Luar Negeri', 'Kementerian Pertahanan', ' Kementerian Koordinator', '4', 'DISETUJUI', 5, 12),
(117, '10', 'Di bawah ini yang bukan merupakan kementerian yang menangani urusan pemerintahan dalam rangka penajaman koordinasi dan sinkronisasi program pemerintah, yaitu....', 'Kementerian koordinator Bidang Politik, Hukum, dan Keamanan', 'Kementerian koordinator Bidang Perekonomian', 'Kementerian koordinator Bidang Kesejahteraan Rakyat', 'Kementerian Sekretariat Negara', '4', 'DISETUJUI', 5, 12),
(118, '10', 'Pembagian kekuasaan berarti bahwa kekuasaan itu memang dibagi-bagi dalam beberapa bagian adalah pengertian pembagian kekuasaan menurut....', 'Jimly Asshidiqie', 'Zul Afdi Ardian', 'John Locke', 'Moh. Kusnardi dan Harmaily Ibrahim', '4', 'DISETUJUI', 5, 12),
(119, '10', 'Organisasi di suatu wilayah yang mempunyai kekuasaan tertinggi yang sah dan ditaati rakyatnya disebut....', 'daerah', 'regional', 'negara', 'pemerintah', '3', 'DISETUJUI', 5, 12),
(120, '10', 'Negara adalah kekuatan dari sekelompok manusia yagn berada atau tinggal di wilayah suatu negara adalah pengertian negara menurut....', 'Robert Mac Iver', 'George Jellineck', 'Sunarko', 'Miriam Budiardjo', '2', 'DISETUJUI', 5, 12),
(121, '10', 'Negara memiliki kekuatan fisik secara legal merupakan sifat negara yang ....', 'monopolis', 'memaksa', 'mencakup semua', 'bilateral', '2', 'DISETUJUI', 5, 12),
(122, '10', 'Negara sebagai organisasi kekuasaan terdiri atas jabatan-jabatan dan untuk mengatur masyarakat dengan kekuasaannya. Pernyataan tersebut merupakan definisi negara sebagai....', ' organisasi kekuasaan', 'organisasi politik', 'organisasi kesusilaan', 'negara intergralistik', '1', 'DISETUJUI', 5, 12),
(123, '10', 'Suatu negara memiliki susunan masyarakatnya kesatuan, segala golongan, dan berhubungan erat dengan yang lainnya sebagai suatu kesatuan merupakan ciri....', 'negara komunis', 'negara federal', 'negara integralistik', 'negara serikat', '3', 'DISETUJUI', 5, 12),
(124, '10', 'Negara dalam menetapkan tujuan bersama rakyatnya merupakan sifat negara yang....', 'monopoli', 'memaksa', 'mencakup semua', 'bilateral', '1', 'DISETUJUI', 5, 12),
(125, '10', 'Perhatikan pernyataan di bawah ini!\r\n1. memaksa\r\n2. monopoli\r\n3. mencakup semua\r\n4. kesatuan\r\n5. demokrasi\r\nBerdasarkan pernyataan di atas, yang merupakan sifat hakikat negara menurut Miriam Budiardjo, yaitu....', '1, 2, dan 3', '2, 3, dan 4', '3, 4, dan 5', '2, 4, dan 5', '1', 'DISETUJUI', 5, 12),
(126, '10', 'Semua orang yang menjadi penghuni suatu negara disebut....', 'rakyat', 'penduduk', 'warga negara', 'bukan penduduk', '1', 'DISETUJUI', 5, 12),
(127, '10', 'Mereka yang berada atau tinggal di wilayah suatu negara hanya untuk batas waktu tertentu dan tidak bermaksud menetap disebut....', 'rakyat', 'penduduk', 'warga negara', 'bukan penduduk', '4', 'DISETUJUI', 5, 12),
(128, '10', 'Mereka yang secara hukum sebagai anggota negara dan mengakui bahwa pemerintahan negara itu adalah pemerintahan yang sah disebut....', 'rakyat', 'penduduk', 'warga negara', 'bukan penduduk', '1', 'DISETUJUI', 5, 12),
(129, '10', 'Wilayah NKRI adalah sebuah negara kepulauan yang berciri nusantara dengan wilayah yang batas-batas dan hak-haknya ditetapkan dengan undang-undang merupaksal pasal....UUD 1945', '24', '25A', '25B', '25C', '2', 'DISETUJUI', 5, 12),
(130, '10', 'Berikut ini yang merupakan batas alamiah wilayah daratan suatu negara, kecuali....', 'sungai', 'danau', 'pegunungan', 'pagar tembok', '4', 'DISETUJUI', 5, 12),
(131, '10', 'Di bawah ini yang termasuk ke dalam batas buatan wilayah daratan suatu negara adalah....', 'sungai', 'pegunungan', 'danau', 'patok besi', '4', 'DISETUJUI', 5, 12),
(132, '10', 'Perairan berupa samudera, laut, selat, danau, dan sungai disebut....', 'wilayah daratan', 'wilayah lautan', 'wilayah udara', 'wilayah negara', '2', 'DISETUJUI', 5, 12),
(133, '10', 'Tokoh yang mengembangkan konsepsi pokok tentang kelautan Res nullius, yaitu....', 'John Sheldon', 'Hugo de Groot', 'Montesuieu', 'Miriam Budiardjo', '1', 'DISETUJUI', 5, 12),
(134, '10', 'Konsepsi yang menyatakan bahwa laut itu dapat diambil dan dimiliki oleh masing-masing negara, yaitu....', 'res communis', 'res nullius', 'res sanguinis', 'res soli', '4', 'DISETUJUI', 5, 12),
(135, '10', 'Konferensi hukum laut internasional III diselenggarakan pada tahun....', '1980', '1981', '1982', '1983', '3', 'DISETUJUI', 5, 12),
(136, '10', 'Wilayah laut suatu negara yang jaraknya 200 mil laut diukur dari pantai disebut....', 'batas laut teritorial', 'batas zona bersebelahan', 'zona ekonomi ekslusif', 'batas landas benua', '3', 'DISETUJUI', 5, 12),
(137, '10', 'Wilayah suatu negara yang berada di luar wilayah negara itu disebut....', 'wilayah daratan', 'wilayah lautan', 'wilayah udara', 'wilayah ekstrateritorial', '4', 'DISETUJUI', 5, 12),
(138, '10', 'Tokoh yang menyatakan bahwa setiap negara mempunyai kedaulatan atas wilayah udaranya sampai yang diperlukan untuk menjaga keamanannya adalah....', 'Schacter', 'Cooper', 'Hugo de Groot', 'John Sheldon', '1', 'DISETUJUI', 5, 12),
(139, '10', 'Perhatikan pernyataan di bawah ini!\r\n1. Kementerian Keuangan\r\n2. Kementerian Perindustrian\r\n3. Kementerian Perdagangan\r\n4. Kementerian Pertanian\r\n5. Kementerian Luar Negeri\r\n6. kementerian Kehutanan\r\n7. kementerian Pertahanan\r\nBerdasarkan pernyataan ', '1 dan 2', '2 dan 3', '3 dan 5', '5 dan 7', '4', 'DISETUJUI', 5, 12),
(140, '10', 'Di bawah ini yang termasuk ke dalam kementerian yang menangani urusan pemerintahan dalam rangka penajaman, koordinasi, dan sinkronisasi program pemerintah adalah....', 'Kementerian Pertanian, Kementerian Kehutanan, dan Kementerian Lingkungan Hidup', 'Kementerian Keuangan, Kementerian Perdagangan dan Kementerian Perhubungan', 'Kementerian Koordinator Bidang Politik, Kementerian Kehutanan, dan Kementerian Sosial', 'Kementerian Sekretariat Negara, Kementerian Pembangunan Daerah Tertinggal, dan Kementerian Pemuda dan Olahraga', '4', 'DISETUJUI', 5, 12),
(141, '10', 'Penyelenggaraan negara yang bersih dan bebas dan korupsi, kolusi, serta nepotisme menurut UU Republik Indonesia nomor.....', '25 Tahun 1999', '26 Tahun 1999', '27 Tahun 1999', '28 Tahun 1999', '4', 'DISETUJUI', 5, 12),
(142, '10', 'Penyelenggaraan negara dalam arti sempit, yaitu....', 'eksekutif', 'legislatif', 'yudikatif', 'konstitutif', '1', 'DISETUJUI', 5, 12),
(143, '10', 'Kekuasaan untuk menetapkan dan melaksanakan kebijakan moneter merupakan kekuasaan....', 'konstitutif', 'eksekutif', 'legislatif', 'moneter', '4', 'DISETUJUI', 5, 12),
(144, '10', 'Tokoh yagn mempelopori konsepsi yang menyatakan bahwa laut itu dapat diambil dan dimiliki oleh masing-masing negara adalah....', 'Huge de Groot', 'Jhon Sheldon', 'Miriam Budiardjo', 'Sunarko', '2', 'DISETUJUI', 5, 12),
(145, '10', 'Konferensi hukum laut internasional III diselenggarakn oleh PBB pada....', '10 Desember 1982', '11 Desember 1982', '12 Desember 1982', '13 Desember 1982', '1', 'DISETUJUI', 5, 12),
(146, '10', 'Wilayah udara itu haruslah sampai pada ketinggian di mana udara masih cukup mampu mengangkat balon dan pesawat udara, merupakan pengertian dari....', 'teori keamanan', 'teori pengawan cooper', 'teori udara bebas', 'teori udara', '4', 'DISETUJUI', 5, 12),
(147, '10', 'Batas wilayah Indonesia sebelah timur berbatasan langsung dengan....', 'Pulau Kalimantan', 'Timor Leste', 'Samudera Hindia', 'Papua Nugini', '4', 'DISETUJUI', 5, 12),
(148, '10', 'Proses permohonan kewarganegaraan oleh warga negara asing menjadi warga negara suatu negara disebut....', 'naturalisasi', 'deportasi', 'imigrasi', 'transmigrasi', '1', 'DISETUJUI', 5, 12),
(149, '10', 'Menurut dari Ernest Renan sebuah bangsa tercipta dikarenakan?', 'Penyatuan takdir', 'komunitas politik', 'keinginan untuk bersatu', 'kesamaan linguistik', '3', 'DISETUJUI', 5, 12),
(150, '10', 'Pemahaman soal sebuah negara sebagai suatu organisasi moral yang bisa muncul sebagai sintesis diantara universal dengan sebuah independensi individu dinegara disebut dengan?', 'polisi', 'manusia', 'kekuasaan', 'kesusilaan', '4', 'DISETUJUI', 5, 12),
(151, '10', 'Semua hukum ataupun peraturan yang sudah dikeluarkan kemudian disetujui oleh otoritas yang sangat kompeten kemudian berlaku bagi semua orang jadi sifat negara itu ialah?', 'kekuatan', 'monopoli', 'tetap', 'benar', '3', 'DIREVIEW', 5, 12),
(152, '10', 'Siapa yang bisa melakukan hukum pada anggota sebuah negara', 'orang-orang', 'warga', 'populasi', 'orang asing', '2', 'DIREVIEW', 5, 12),
(153, '10', 'Negara Liberal bisa diperiksa berdasarkan dengan penampilan negara didalam fakta sejarah disebut dengan?', 'penggabungan', 'inovasi', 'accesie', 'pendudukan', '4', 'DIREVIEW', 5, 12),
(154, '10', 'Berdasarkan dari Pasal 19 ayat 1 untuk anggota DPR akan dipilih?', 'Peraturan MPR', 'keputusan presiden', 'undang-undang', 'pemilihan umum', '4', 'DIREVIEW', 5, 12),
(155, '10', 'Dasar konstitusi negara Indonesia yang bisa dihargai oleh masyarakat Indonesia disebut dengan?', 'Peraturan MPR', 'Hukum', 'Pancasila', 'UUD 1945', '4', 'DIREVIEW', 5, 12),
(156, '10', 'Poin-poin yang ada dibawah ini yang tak termasuk ketujuan didalam pelaksanaan otonomi daerah ialah?', 'Tingkatkan pelayanan untuk masyarakat dan juga kebaikan bersama', 'Pengembangan kehidupan secara demokratis, keadilan dan juga keadilan', 'Desentralisasi yang menciptakan otonomi daerah', 'Menjaga hubungan secara harmonis diantara pusat dan juga daerah', '3', 'DIREVIEW', 5, 12),
(157, '10', 'Daya yang dimana selalu dibatasi disaat membagi cabang-cabang pada tujuan kontrol yang pernyataan soal kondisi disebutkan oleh?', 'Harmaily Ibrahim', 'Jimly Ashiddiqie', 'Montesquieu', 'Zul Afdi Ardian', '2', 'DIREVIEW', 5, 12),
(158, '10', 'Buku ini yang berjudul Dua Perjanjian diantar Pemerintah didalam mengusulkan suatu kekuasaan negara yang menjadi badan negara yang dimana fungsinya berbeda, serta pernyataan itu dikemukakan oleh?', 'Mostesquieu', 'miriam budiarjo', 'jimly assidiq', 'jhon lokce', '4', 'DISETUJUI', 5, 12),
(159, '10', 'Permainan sepak bola terdiri atas.... babak.', 'satu', 'dua', 'tiga', 'empat', '2', 'DIREVIEW', 9, 9),
(160, '10', 'Dalam permainan sepak bola, bagian tubuh yang tidak diperbolehkan menyentuh bola bagi para pemain selain penjaga gawang adalah....', 'kepala', 'dada', 'tangan', 'kaki', '3', 'DISETUJUI', 9, 9),
(161, '10', 'Berikut ini merupakan teknik dasar dalam permainan sepak bola, kecuali....', 'menendang bola dengan menggunakan kaki bagian dalam', 'menendang bola dengan menggunakan kaki bagian luar', 'menendang bola dengan punggung kaki', 'menahan bola menggunakan tangan', '4', 'DISETUJUI', 9, 9),
(162, '10', 'Menendang bola mengenai tengah-tenagah kaki bagian dalam. Cara tersebut merupakan teknik menendang bola menggunakan....', 'kaki bagian dalam', 'kaki bagian luar', 'punggung kaki', 'punggung kaki bagian dalam', '1', 'DISETUJUI', 9, 9),
(163, '10', 'Kaki tendang diayun dari belakang. Saat bola datang, ujung kaki atau sepatu mengarah ke tanah. Perkenaan bola adalah pada kaki bagian....', 'dalam kaki', 'luar kaki', 'punggung kaki', 'telapak kaki', '3', 'DISETUJUI', 9, 9),
(164, '10', 'Berikut ini anggota badan yang digunakan untuk menahan bola memantul, kecuali....', 'perut', 'kaki bagian dalam', 'kaki bagian luar', 'kepala', '4', 'DISETUJUI', 9, 9),
(165, '10', 'Tendangan yang biasa digunakan oleh pemain untuk melakukan tendangan penalti adalah....', 'kaki bagian dalam', 'kaki bagian luar', 'punggung kaki', 'ujung kaki', '1', 'DISETUJUI', 9, 9),
(166, '10', 'Seorang pemain belakang tangannya menyentuh bola di dalam darah kotak penalti wilayahnya, maka hukuman yang diberikan wasit adalah....', 'tendangan bebas', 'tendangan penalti', 'lemparan sudut', 'lemparan ke dalam', '2', 'DISETUJUI', 9, 9),
(167, '10', 'Berikut ini keterampilan teknik yang harus dimiliki oleh pemain sepak bola, kecuali....', 'passing', 'shooting', 'heading', 'lay up shoot', '4', 'DISETUJUI', 9, 9),
(168, '10', 'Ukuran panjang lapangan sepak bola adalah....', '75 m â€“ 90 m', '64 m â€“ 75 m', '80 m â€“ 95 m', '100 m â€“ 110 m', '4', 'DISETUJUI', 9, 9),
(169, '10', 'Pemain depan dalam permainan sepak bola sering dinamakan....', 'penyerang', 'pengumpan', 'penghubung', 'pengontrol', '1', 'DISETUJUI', 9, 9),
(170, '10', 'Istilah heading dalam permainan sepak bola, berarti....', 'mengontrol bola', 'menangkap bola', 'menepis bola', 'menyudul bola', '4', 'DISETUJUI', 9, 9),
(171, '10', 'Berikut ini merupakan teknik dasar sepak bola adalah....', 'menendang, menghentikan, dan menggiring', 'servis, passing, dan smes', 'menggiring, menangkap, dan menembak', 'smes, blok, dan menendang', '1', 'DISETUJUI', 9, 9),
(172, '10', 'Jika seorang pemain berada di belakang pemain terakhir selain kiper di daerah pertahanan lawan, kemudian bola ditendang maka terjadi....', 'frre kick', 'corner kick', 'outside', 'offside', '4', 'DISETUJUI', 9, 9),
(173, '10', 'Pada awalnya, permainan sepak bola berkembang di negara.....', 'cina', 'jepang', 'belanda', 'inggris', '4', 'DISETUJUI', 9, 9),
(174, '10', 'Cara memegang bola dengan menggunakan dua jari adalah memegang bola dengan menempatkan dua jari berada di atas bola, yaitu jari....', 'jempol dan tengah', 'jempol dan telunjuk', 'telunjuk dan jari tengah', 'tengah dan jari manis', '3', 'DISETUJUI', 9, 9),
(175, '10', 'Berikut ini tiga cara melempar bola pada permainan softball, yaitu....', 'lemparan ke atas, melambung, dan mendatar', 'lemparan melambung, mendatar, dan atas', 'lemparan miring, melambung, dan mendatar', 'lemparan melambung, mendatar, dan bawah', '4', 'DISETUJUI', 9, 9),
(176, '10', 'Berikut ini merupakan teknik menangkap bola dalam permainan softball, kecuali....', 'menangkap bola lurus', 'menangkap bola atas', 'menangkap bola samping', 'menangkap bola bawah', '1', 'DISETUJUI', 9, 9),
(177, '10', 'Saat akan menangkap bola lurus, glove dihadapkan ke arah....', 'atas', 'bawah', 'samping', 'depan', '4', 'DISETUJUI', 9, 9),
(178, '10', 'Seorang catcher berdiri di belakang....', 'pittcer', 'pemukul', 'umpire', 'battle', '2', 'DISETUJUI', 9, 9),
(179, '10', 'Softball adalah olahraga permainan yang menggunakan bola....', 'kecil', 'besar', 'sedang', 'voli', '4', 'DISETUJUI', 9, 9),
(180, '10', 'Berikut ini merupakan jensi-jenis olahraga permainan bola kecil, kecuali....', 'sepakbola', 'tenis meja', 'softball', 'rounders', '2', 'DISETUJUI', 9, 9),
(181, '10', 'Jumlah pemain dalam permainan softball satu regunya adalah....', '6', '9', '11', '12', '2', 'DISETUJUI', 9, 9),
(182, '10', 'Pemain yang berhadapan langsung dengan pemukul adalah....', 'catcher', 'pitcher', 'coach', 'batter', '2', 'DISETUJUI', 9, 9),
(183, '10', 'Teknik lemparan yang dilakukan dengan gerakan ayunan lengan ke atas melewati garis horizontal pada persediaan bahu adalah....', 'lemparan atas', 'lemparan datar', 'lemparan samping', 'lemparan melambung', '4', 'DISETUJUI', 9, 9),
(184, '10', 'Dalam permainan softball, pemain yang bertugas melambungkan bola adalah....', 'set upper', 'keeper', 'catcher', 'pithcer', '4', 'DISETUJUI', 9, 9),
(185, '10', 'Lamanya permaiann softball dalam satu kali pertandingan adalah...', '7 inning', '8 inning', '9 inning', '10 inning', '1', 'DISETUJUI', 9, 9),
(186, '10', 'Berikut ini yang bukan merupakan perlengkapan permainan softball adalah....', 'glove', 'topi', 'bola', 'kacamata', '4', 'DISETUJUI', 9, 9),
(187, '10', 'Lemparan samping disebut juga', 'overhand throw', 'underhand toss', 'slidehand throw', 'picther throw', '1', 'DISETUJUI', 9, 9),
(188, '10', 'Teknik menangkap bola lambung disebut juga..', 'straight ball', 'ground ball', 'fly ball', 'wing ball', '3', 'DISETUJUI', 9, 9),
(189, '10', 'Ukuran bak lompatan jauh berjarak....', '8 meter', '9 meter', '10 meter', '11 meter', '2', 'DISETUJUI', 9, 9),
(190, '10', 'Teknik dalam lompat jauh setelah melakukan awalan adalah....', 'melayang', 'menolak', 'mendarat', 'melenting', '2', 'DISETUJUI', 9, 9),
(191, '10', 'Rangakaian gerakan lompat jau adalah.....', 'berlari secepatnya, menolak, dan mendarat', 'berlari secepatnya, mendarat, menolak, dan melayang', 'berlari secepatnya, menolak, lari, dan melayang', 'berlari secepatnya, menolak, melayang di udara, dan mendarat', '4', 'DISETUJUI', 9, 9),
(192, '10', 'Lebar lintasan awalan pada lompat jauh adalah....', '1,22 meter', '2,22 meter', '2,75 meter', '3,22 meter', '3', 'DISETUJUI', 9, 9),
(193, '10', 'Untuk kejuaraan-kejuaraan atletik resmi tingkat internasional, peraturan yang berlaku adalah peraturan yang dikeluarkan oleh....', 'IOS', 'IBF', 'IAAF', 'FASI', '3', 'DISETUJUI', 9, 9),
(194, '10', 'Pada waktu melayang di uara yang perlu diperhatikan adalah.....', 'menjaga kelenturan', 'menjaga keseimbangan', 'menjaga gerak kaki', 'menjaga konsentrasi', '2', 'DISETUJUI', 9, 9),
(195, '10', 'Posisi kedua tangan pada saat mendarat dalam lompat jauh adalah....', 'diluruksan ke belakang', 'diayun ke samping', 'diayun ke belakang', 'diayun dan diluruskan ke depan', '4', 'DISETUJUI', 9, 9),
(196, '10', 'Gerakan yang ada pada lompat jauh merupakan perpaduan antara....', 'kecepatan dan kekuatan', 'konsentrasi dan keseimbangan', 'kelentukan dan kelincahan', 'daya tahan dan ketepatan', '1', 'DISETUJUI', 9, 9),
(197, '10', 'Gaya lompat jauh dapat diketahui pada waktu...', 'persiapan', 'awalan', 'tolakan', 'melayang di uara', '4', 'DISETUJUI', 9, 9),
(198, '10', 'Faktor utama pemberi kontribusi terhadap lompat jauh adalah....', 'kelenturan tubuh', 'daya tahan', 'efisiensi gerak lari', ' power pada saat mulai lelah', '1', 'DISETUJUI', 9, 9),
(199, '10', 'Hal-hal yang perlu dihindari dalam lompat jauh adalah....', 'memperpendek atau memperpanjang langkah terakhir sebelum bertolak', ' menguasai gerak langkah dan ayunan', ' mencapai jangkauan gerak yang baik', 'memelihara kecepatan sampai saat menolak', '1', 'DISETUJUI', 9, 9),
(200, '10', 'Cara mendarat yang benar pada lompat jauh adalah....', 'kaki duluruskan', 'kaki dilipat ke belakang', 'kaki dilipat ke depan', 'lutut ditekuk', '4', 'DISETUJUI', 9, 9),
(201, '10', 'Mendarat yang baik dalam lompat jauh dilakukan dengan....', 'tangan menopang berat badan', 'mendarat dengan satu kaki', 'mendarat dengan kedua kaki, lutut ditekuk, berat badan dibawa ke depan', '', '3', 'DISETUJUI', 9, 9),
(202, '10', 'Gerakan yang benar saat melakukan awalan lompat jauh ketika akan bertumpu adalah....', 'tidak mengubah kecepatan dan langkah', 'mengubah kecepatan tapi mengubah langkah', 'tidak mengubah kecepatan tapi mengubah langkah', 'mengubah kecepatan tidak mengubah langkah', '1', 'DISETUJUI', 9, 9),
(203, '10', 'Suatu aktivitas gerakan yang dilakukan di dalam lompatan untuk mencapai lompatan yang sejauh-jauhnya, disebut dengan....', 'lompat jauh', 'lompat jangkit', ' lompat tinggi', 'lompat harimau', '1', 'DISETUJUI', 9, 9),
(204, '10', 'Induk organisasi pencak silat di Indonesia bernama....\r\n', 'PERSILAT', 'IPSI', 'PERSIBA', 'PERBASI', '4', 'DISETUJUI', 9, 9),
(205, '10', 'Sikap dasar khusus pada pencak silat pelu dilatih karena bertindak sebagai dasar....', 'kekuatan', 'keseimbangan', 'kelincahan', 'kelentukan', '2', 'DISETUJUI', 9, 9),
(206, '10', 'Berikut ini aspek atau unsur dalam pencak silat, kecuali....', 'unsur olahraga', 'unsur kesenian', 'unsur beladiri', ' unsur kekuatan', '4', 'DISETUJUI', 9, 9),
(207, '10', 'Seorang yang pandai dan berilmu silat tinggi sering disebut....', 'suhu', 'pendekar', 'jawara', 'pelatih', '2', 'DISETUJUI', 9, 9),
(208, '10', 'Tujuan dari belajar pencak silat adalah....', 'menunjukkan kekuatan', 'menjatuhkan lawan', 'membela diri', 'melatih kekuatan', '3', 'DISETUJUI', 9, 9),
(209, '10', 'Teknik melukis cat air sebagai permukaan kertas adalah.', 'akrilik', 'cat air', 'lukisan batik', 'lukisan mozaik', '2', 'DISETUJUI', 10, 15),
(210, '10', 'tekstur dan cahaya gelap adalah bentuk.', 'drama', 'menari', 'seni musik', 'seni rupa', '4', 'DISETUJUI', 10, 15),
(211, '10', 'perhatikan bentuk karya seni dibawah ini\r\n(1) representatif (nyata).\r\n(2) Dekoratif.\r\n(3) Ekspresif.\r\n(4) Non-representatif (ringkasan)\r\nHasil karya seni adalah.', 'patung itu', 'juru potret', 'grafis', 'sebuah lukisan', '4', 'DISETUJUI', 10, 15),
(212, '10', 'Kita dapat menikmati seni sebagai', 'perasaan', 'ke luar', 'estetika', 'pikiran', '1', 'DISETUJUI', 10, 15),
(213, '10', 'Proses dalam penciptaan seni memiliki keunikan, kecuali', 'sendiri-sendiri', 'universal', 'ekspresif', 'selalu', '4', 'DISETUJUI', 10, 15),
(214, '10', 'Peralatan yang dapat digunakan untuk produksi lukisan kecuali', 'cat minyak', 'kanvas', 'pensil', 'pahat', '4', 'DISETUJUI', 10, 15),
(215, '10', 'Motif dalam bentuk garis pendek adalah', 'sawut', 'memeriksa', 'ukel', 'sepon', '1', 'DISETUJUI', 10, 15),
(216, '10', 'pada fungsi dan tujuan penciptaannya seni disebut', 'seni dua dimensi', 'seni tiga dimensi', 'seni murni terapan', 'seni dua dimensi', '3', 'DISETUJUI', 10, 15),
(217, '10', 'Teknik dalam pembuatan keramik besar adalah.', 'mencetak', 'tekan', 'panduan', 'pilin', '1', 'DISETUJUI', 10, 15),
(218, '10', 'Salah satu prinsip yang dosebut sebagai seni rupa adalah', 'prinsip ritme', 'Prinsip persatuan', 'prinsip orientasi', 'Prinsip keseimbangan', '2', 'DISETUJUI', 10, 15),
(219, '10', 'Jenis yang dibuat pad teknik grit dan pencetakan adalah', 'piala', 'teko', 'barel', 'meja berukir', '4', 'DISETUJUI', 10, 15),
(220, '10', 'Alat yang dibuat orang-orang pada zaman prasejarah adalah', 'teruskan hidup', 'akhir hidup', 'melestarikan hidup', 'perburuan hewan hidup', '3', 'DISETUJUI', 10, 15),
(221, '10', 'Pembuatan seni terapan dengan sejumlah , kecuali', 'ketrampilan', 'ketangkasan', 'ketangguhan tangan', 'kekuatan', '4', 'DISETUJUI', 10, 15),
(222, '10', 'Orang yang membuat kerajinan disebut sebagai', 'pengukir', 'pelukis', 'artis', 'pengrajin', '4', 'DISETUJUI', 10, 15),
(223, '10', 'Berikut ini sebagai contoh benda seni terapan adalah', 'meja', 'kursi', 'cangkir', 'pengrajin', '4', 'DISETUJUI', 10, 15),
(224, '10', 'Berikut ini sebagai contoh objek seni terapan kecuali', 'dekorasi dinding', 'teko ', 'kacamata', 'kaca bewarna', '2', 'DISETUJUI', 10, 15),
(225, '10', 'Jenis seni terapan akan tercantum di bawah ini, kecuali.', 'kerajinan anyaman', 'kerajinan batik', 'Kerajinan ukiran', 'Kerajinan patung', '4', 'DISETUJUI', 10, 15),
(226, '10', 'berikut termasuk bahan lunak dan dapat digunakan sebagai barang pakai, kecuali.', 'Batu andesit', 'suara', 'plastisin', '', '1', 'DISETUJUI', 10, 15),
(227, '10', 'Manusia akan selalu tahu debgan benda-benda seni terapan disebut.', 'modern', 'prasejarah', 'Orde baru', 'kuno', '2', 'DISETUJUI', 10, 15),
(228, '10', 'Di bawah ini yag akan menemukan fungsi dalam musik Gamelan, kecuali', 'sebagai pendamping', 'sebagai pembuka', 'sebagai kesimpulan', 'dari tuner lagu', '3', 'DISETUJUI', 10, 15),
(229, '10', 'Berikut ini yang bukan fungsi dari alat musik tradisional adalah', 'sebagai / hiburan', 'sebagai / upacara', 'sebagai / distribusi musik', 'sebagai / ekspresi', '3', 'DISETUJUI', 10, 15),
(230, '10', 'karakteristik lagu-lagu rakyat yang dapat diwarisi dari tradisi disebut', 'Lagu / musik sederhana', 'dikenal sebagai nama pelukis', 'Karakteristik lagu dalam situasi budaya', 'menggambarkan kehidupan', '3', 'DISETUJUI', 10, 15),
(231, '10', 'Bentuk penciptaan musik sehingga lagu dapat dinikmati disebut.', 'komposisi', 'dibuat sewenang wenang', 'lagu itu', 'turunan', '1', 'DISETUJUI', 10, 15),
(232, '10', ' Alat musik yang digunakan dalam mengiringi sosok bayangan adalah', 'calung', 'tanjidor', 'gong', 'giat', '4', 'DISETUJUI', 10, 15),
(233, '10', 'Berikut merupakan teknik menghias benda-benda keramik, kecualiâ€¦.', 'teknik toreh', 'teknik karawangan', 'teknik cap', 'teknik arsir', '4', 'DISETUJUI', 10, 15),
(234, '10', 'Menggambar dengan menggosokan tangan atau kertas yang sudah dibubuhi pensil disebutâ€¦.', 'teknik dusel', 'teknik arsir', 'teknik pointilis', 'teknik cetak', '1', 'DISETUJUI', 10, 15),
(235, '10', 'Daerah yang merupakan penghasil karya seni batik pesisiran adalahâ€¦', 'Semarang', 'Pekalongan', 'Jepara', 'Demak', '1', 'DISETUJUI', 10, 15),
(236, '10', 'Berikut yang bukan teknik membuat benda keramik adalahâ€¦', 'teknik pijit', 'teknik slab', 'teknik cukil', 'teknik putar', '3', 'DISETUJUI', 10, 15),
(237, '10', 'Seni sebagai media ekspresi, artinyaâ€¦.', 'media mencurahkan gejolak jiwa', 'media hiburan', 'media percobaan', 'media kampanye', '1', 'DISETUJUI', 10, 15),
(238, '10', 'Alat untuk menyangga kanvas disebutâ€¦.', 'sagang', 'palet', 'spanram', 'tali', '1', 'DISETUJUI', 10, 15),
(239, '10', 'Lukisan-lukisan yang dibuat pada zaman batu npada umunya berupa gambarâ€¦.', 'bunga', 'binatang', 'alam semesta', 'manusia', '2', 'DISETUJUI', 10, 15),
(240, '10', 'Teknik menempelkan pecahan kaca berwarna-warni pada dinding atau permukaan datar lainnya sehingga membentuk objek gambar tertentu disebut lukisanâ€¦.', 'al secco', 'tempera', 'al fresco', 'mozaik', '4', 'DISETUJUI', 10, 15),
(241, '10', 'Orang yang pertama kali mengembangkan teknik lukisan batik adalahâ€¦.', 'Amri Yahya', 'Affandi', 'Asrul Sani', 'Raden Saleh', '1', 'DISETUJUI', 10, 15),
(242, '10', ' Jenis lukisan yang menghasilkan warna cerah dan menyala adalahâ€¦.', 'lukisan batik', ' lukisan aquarel', 'lukisan akrilik', 'lukisan intarsia', '3', 'DISETUJUI', 10, 15),
(243, '10', 'Media seni lukisa yang terbuat dari kain yang sudah didasari dengan cat planir disebutâ€¦.', 'sagang', 'kanvas', 'palet', 'kuas', '2', 'DISETUJUI', 10, 15),
(244, '10', 'Panas dan berani adalah kesan yang ditimbulkan oleh warnaâ€¦.', 'kuning', 'biru', 'merah', 'hijau', '3', 'DISETUJUI', 10, 15),
(245, '10', 'Pengungkapan perasaan batin estetis pada bidang dua dimensi disebutâ€¦.', 'membentuk', 'melukis', 'memahat', 'mengukir', '3', 'DISETUJUI', 10, 15),
(246, '10', 'Alat untuk mencampur warna atau cat disebutâ€¦.', 'kanvas', 'trekpen', 'palet', '', '2', 'DISETUJUI', 10, 15),
(247, '10', 'Sablon merupakan karya seniâ€¦.', 'lukis', 'patung', 'grafis', 'musik', '3', 'DISETUJUI', 10, 15),
(248, '10', 'Tidak semua suara yang diucapkan manusia dapat disebut musik. Suara manusia yang disebut musik adalahâ€¦.', 'suara yang keras', 'suara yang lembut', 'suara yang teratur dan indah', 'warna suara yang khas', '3', 'DISETUJUI', 10, 15),
(249, '10', 'Musik tradisional adalahâ€¦.', 'musik yang tidak mengenal nada', 'musik yang tidak dapat dituliskan dalam tangga nada', 'musik yang dinyanyikan oleh orang desa', 'musik yang dipelajari secara turun temurun', '4', 'DISETUJUI', 10, 15),
(250, '10', 'Kolintang adalah musik tradisional dari daerahâ€¦.', 'minahasa', 'bali', 'aceh', 'jawa', '1', 'DISETUJUI', 10, 15),
(251, '10', 'Kicir-kicir adalah lagu daerahâ€¦.', 'tapanuli selatan', 'sulawesi selatan', 'jakarta', 'surakarta', '3', 'DISETUJUI', 10, 15),
(252, '10', 'Di jawa dikenal alat musik gamelan yang memiki beberapa fungsi. Berikut yang bukan fungsi gamelan adalahâ€¦.', 'hiburan', 'pengiring tari', 'pengiring upacara adat', 'pengiring perjalanan', '4', 'DISETUJUI', 10, 15),
(253, '10', 'Musik sebagai media ekspresi dalam bentuk suara dengan rima/ritme yang teratur. Jenis musik yang dihasilkan oleh suara manusia disebutâ€¦.', 'musik keroncong', 'musik vocal', 'paduan suara', 'ketuk tilu', '2', 'DISETUJUI', 10, 15),
(254, '10', 'Gamelan gegrantangan merupakan nama lain dariâ€¦.', 'gamelan angklung', 'gamelan joget bumbung', 'gamelan gong gede', 'gamelan gong penambuhan', '2', 'DISETUJUI', 10, 15),
(255, '10', 'Talo Balak adalah sebutan gamelan dariâ€¦.', 'Lampung', 'Sumatra Selatan', 'Jambi', 'Sumatra Barat', '1', 'DISETUJUI', 10, 15),
(256, '10', 'Alat musik petik yang berasal dari Kalimantan Timur bernamaâ€¦.', 'sitar', 'kecapi', 'samping', 'tarling', '4', 'DISETUJUI', 10, 15),
(257, '10', 'Seni musik adalah ungkapan gagasan atau perasaan yang estetis dan bermakna yang diwujudkan melalui mediaâ€¦.', 'lukisan', 'tulisan', 'gerakan', 'suara', '4', 'DISETUJUI', 10, 15);
INSERT INTO `soal` (`id_soal`, `tingkat_kelas`, `pertanyaan`, `pilihan1`, `pilihan2`, `pilihan3`, `pilihan4`, `jawaban`, `status`, `id_guru`, `id_mapel`) VALUES
(258, '10', 'Harga beli satu lusin buku kwitansi adalah Rp. 50.000,00 dan dijual dengan harga Rp. 5.000,00 tiap buah. Persentase keuntungannya adalahâ€¦', '10%', '12%', '15%', '20%', '4', 'DIREVIEW', 11, 18),
(259, '10', 'Sebuah koperasi sekolah membeli lima lusin buku seharga Rp. 150.000,00. Jika harga jual sebuah buku Rp. 2.800,00, maka persentase keuntungan yang diperoleh koperasi tersebut adalah…', '4%', '6%', '10%', '12%', '4', 'DIREVIEW', 11, 18),
(260, '10', 'Toko A memberikan potongan harga 20% pada setiap penjualan barang, untuk pembelian sepasang sepatu, Marliana membayar kepada kasir sebesar Rp. 40.000,00. Harga sepasang sepatu itu sebelum mendapat potongan adalah', 'Rp. 8.000', 'Rp.32.000', 'Rp.48.000', 'Rp. 50.000', '3', 'DISETUJUI', 11, 18),
(261, '10', 'Toko buku sedang memberikan diskon potongan harga 10% pada setiap penjualan barang, untuk pembelian buku matematika, Fulan membayar kepada kasir sebesar Rp. 31.500,00. Harga buku tersebut sebelum mendapat potongan adalah', 'Rp. 3.500', 'Rp. 35.000', 'Rp. 32.500', 'Rp. 38.000', '2', 'DISETUJUI', 11, 18),
(262, '10', 'Harga sebuah TV adalah Rp. 586.000,00. Jika terhadap pembelian TV dikenai pajak penjualan sebesar 11%, maka besar uang yang harus dibayar dari pembelian TV tersebut…', 'Rp. 592.446,00', ' Rp. 650.460,00', 'Rp. 651.460,00', 'Rp. 719.290,00', '2', 'DISETUJUI', 11, 18),
(263, '10', 'Harga dua buku dan dua pensil Rp. 8.800,00. jika harga sebuah buku Rp. 600,00 lebih murah dari harga pensil, maka harga sebuah buku adalah ', 'Rp. 2.500', 'Rp.  8.800', 'Rp.1.200', 'Rp.  3.100', '1', 'DISETUJUI', 11, 18),
(264, '10', 'Sebuah koperasi menjual baju seharga  Rp. 864.000,00 setiap lusinnya. Jika hasil penjualan ternyata untung 20% dari harga belinya, maka harga beli sebuah baju adalah…', 'Rp. 14.000,00', 'Rp. 74.400,00', 'Rp. 60.000,00', 'Rp. 720.000,00', '3', 'DISETUJUI', 11, 18),
(265, '10', 'Seorang pedagang buah membeli 5 kotak jeruk yang tiap kotaknya berisi 5kg seharga Rp. 600.000,00. Jika kemudian jeruk tersebut dijual seharga Rp. 9.000,00 tiap kilogramnya, maka persentase keuntungan yang diperoleh pedagang tersebut adalah', '5%', '7,5%', '10%', '12,5%', '4', 'DISETUJUI', 11, 18),
(266, '10', 'Jarak pada peta antara kota Jakarta dan kota Bogor adalah 5 cm, sedangkan jarak yang sesungguhnya 40 km. Skala peta itu adalah…', '1: 800', '1: 80.000', '1: 8.000.000', '1: 800.000', '4', 'DITOLAK', 11, 18),
(267, '10', 'Nilai dari 11-(-5) -9 x(-2) adalah', '-14', '-2', '14', '34', '4', 'DITOLAK', 11, 18),
(268, '10', 'Nilai x yang memenuhi 35x -1 = 27 x +3 adalah…', '2', '3', '4', '5', '4', 'DISETUJUI', 11, 18),
(269, '10', 'Hasil dari -9 x(-3) x(-4) :6 adalah…', '-18', '-16', '18', '-16', '1', 'DISETUJUI', 11, 18),
(270, '10', 'Diketahui log 2 = a dan log 3 = b, maka log 18?6 adalahï¿½', 'a+b', '2a+b', '1/2(a+b)', '1/2 (3a+5b)', '4', 'DISETUJUI', 11, 18),
(272, '10', 'Pernyataan berikut benar, kecuali', 'a^m : a^n = a^mn', 'a^p + a^q = a^p+q', 'âˆša. âˆša  = a ', ' âˆša. âˆšb  = âˆša.b', '1', 'DISETUJUI', 11, 18),
(273, '10', ' Hasil dari (2^3)4 x (2^3) -5 =', '16', '8', '1/8', '1/16', '3', 'DISETUJUI', 11, 18),
(274, '10', 'Nilai x yang memenuhi 5^3x -2  = 25^2x +1 adalah', '-4', '-3', '3', '4', '3', 'DISETUJUI', 11, 18),
(275, '10', 'Nilai x dari 3 log    1/âˆš19   =  x  adalah', '-2', '-1', '1', '2', '2', 'DISETUJUI', 11, 18),
(276, '10', 'Jika log^2 = x, log^3 = y, log^5 = z, maka nilai dari log^30 adalah', 'x -y -z', ' x +y +z ', ' x. y. z ', 'x +y â€“z', '2', 'DISETUJUI', 11, 18),
(277, '10', 'Bentuk sederhana dari 5 log 10 + 5 log 50 â€“ 5 log 4 adalah', '2', '0,2', '123', '123,2', '1', 'DISETUJUI', 11, 18),
(278, '10', 'Karektarisakan dari log^123 , 0002 adalah', '2', '0002', '123', '123,01', '1', 'DISETUJUI', 11, 18),
(279, '10', ' Gula dibeli dengan harga Rp.168.000,00 per-50kg, kemudian dijual harga Rp.2.100,00 tiap Â½ kg. Persentase keuntungan dari harga pembelian adalah', '10%', '20%', '25%', '30%', '3', 'DISETUJUI', 11, 18),
(280, '10', 'Jika log^2 = 0,0310, log^3 = 0,4771 maka log^150 adalah', '0,1761', '0,7781', '1,8289', '2,1761 ', '4', 'DISETUJUI', 11, 18),
(281, '10', 'Dengan menggunakan tabel, nilai dari 0,3987 adalah', '0,6006', '0,6006-1', '0,6006-2', '0,6006-3', '2', 'DISETUJUI', 11, 18),
(282, '10', 'Bentuk pecahan dari 2,0666 adalah', '31/15', '15/31', '2 2/3', '32/15', '1', 'DISETUJUI', 11, 18),
(283, '10', 'Invers penjumlahan dari 2/5 adalah', '-5/2', '-2/5', '5/2', '5,2', '1', 'DISETUJUI', 11, 18),
(284, '10', '( 2/5 + 3/10 ) : 7/10 =', '0.35', '49/100', '1', '20/14', '3', 'DISETUJUI', 11, 18),
(285, '10', 'Seorang pengusaha memerlukan modal sebesar Rp. 5.000.000,00. Modal usaha tersebut diantaranya diperuntukkan 15% alat, 2/5 bahan baku, 0,25 tenaga, dan sisanya untuk transfortasi adalah', 'Rp. 400.000,00 ', 'Rp. 600.000,00', 'Rp. 1.000.000,00', 'Rp. 800.000,00', '3', 'DISETUJUI', 11, 18),
(286, '10', '0,5% setara dengan=', '1/2', '1/20', '1/200', '0,05', '1', 'DISETUJUI', 11, 18),
(287, '10', 'Setelah mendapat bonus 10% seorang karyawan gajinya Rp. 12.100.000,00. Maka gaji sebelum bonus adalah', 'Rp.1.210.000,00', 'Rp.10.500.000,00', 'Rp.10.850.000,00', 'Rp.11.000.000,00', '4', 'DISETUJUI', 11, 18),
(288, '10', 'Hasil dari 2 1/5 : 4 3/7 =', '77/155 ', '155/77  ', ' 156/77 ', '77/156', '1', 'DISETUJUI', 11, 18),
(289, '10', 'Bentuk sederhana 4 âˆš3 + 3 âˆš12 - âˆš27 adalah', '6âˆš3 ', '7âˆš3', '8âˆš3', '9âˆš3 ', '2', 'DISETUJUI', 11, 18),
(290, '10', 'Dibawah ini adalah contoh dari bilangan rasional kecuali', 'âˆš16', '3,14', '25/11', '30%', '1', 'DISETUJUI', 11, 18),
(291, '10', ' 0,002% dari Rp. 10 milliar adalah', 'Rp.  20.000,00', 'Rp.200.000,00', ' Rp.  20.000.000,00  ', 'Rp.2.000.000.000,00', '2', 'DISETUJUI', 11, 18),
(292, '10', 'Invers perkalian dari 2 1/3 adalah', '-7/3', '-2 1/3', '-3/7', '3/7', '4', 'DISETUJUI', 11, 18),
(293, '10', 'Bentuk pecahan dari 1,02222â€¦. Adalah', '45/2 ', '46/45', '47/45', '11/9', '2', 'DISETUJUI', 11, 18),
(294, '10', 'Nilai dari 2/5 x ( 2/3 + 1/6 ) adalah', '45/2  ', ' 1/6 ', '2/45', '1/3 ', '4', 'DISETUJUI', 11, 18),
(295, '10', 'Harga 1 dus disket Rp  30.000,0. Jika pembelian 1 dus disket mendapat potongan  10%, disket yang dapat dibeli dengan uang Rp. 405.000,00 adalah', '12 dus', '13 dus', '14 dus', '15 dus', '4', 'DISETUJUI', 11, 18),
(296, '10', 'Keanekaragaman hayati tercermin dalam perbedaan', 'Bentuk, warna, jumlah, ukuran dan penampilan', 'Morfologi dan perilaku', 'Morfologi dan anatomi', 'Bentuk, warna, jumlah, ukuran dan jenis keturunan', '4', 'DISETUJUI', 12, 19),
(297, '10', 'Contoh keanekaragaman pada tingkat gen adalah ', 'Mangga mangga, mangga manalagi dan mangga muda', 'Kudu dan keledai', 'Kucing dan harimau', '', '1', 'DISETUJUI', 12, 19),
(298, '10', 'Faktor-faktor yang mengarahkan Indonesia ke keanekaragaman hayati yang sangat tinggi adalah', ' terletak di antara dua benua dan dua samudera', 'memiliki iklim tropis dan banyak presipitasi', 'memiliki flora dan fauna yang serupa dengan oriental dan australia', 'sebagai daerah migrasi untuk hewan di dunia\r\n', '2', 'DISETUJUI', 12, 19),
(299, '10', 'Hewan-hewan Indonesia, yang terkait dengan wilayah oriental dan Australia adalah', 'Barat (Badak) dan Timur (Anoa)', 'Barat (orangutan) dan Timur (burung cendrawasih)', ' Barat (Gibbon) dan Timur (burung Kasuari)', 'barat (gajah) dan timur (marsupilia)', '2', 'DISETUJUI', 12, 19),
(300, '10', 'Hewan-hewan berikut berada di daerah oriental, kecuali ', ' seekor gajah', 'badak', ' jerapah', 'banteng', '3', 'DISETUJUI', 12, 19),
(301, '10', 'Jenis tanaman berikut yang menjadi ciri khas wilayah Yogyakarta adalah â€¦\r\n', 'a. rusa tikus putih', 'selembut malam', 'Kepel', ' mangga', '3', 'DISETUJUI', 12, 19),
(302, '10', 'Penamaan bioma didasarkan pada â€¦\r\n', 'Curah hujan yang jatuh di daerah tersebut\r\n', 'lintang dan ketinggian tempat\r\n', 'sejenis fauna yang menonjol di daerah tersebut\r\n', 'jenis tumbuhan yang dominan\r\n', '4', 'DISETUJUI', 12, 19),
(303, '10', 'Di antara tanaman berikut yang umum ditemukan di Pulau Jawa adalah', ' kayu jati', 'kruing', 'matoa', 'angsana', '1', 'DISETUJUI', 12, 19),
(304, '10', 'Di antara ekosistem yang paling beragam adalah', 'hutan mangrove', 'sawah', 'savannah', 'hutan hujan tropis', '4', 'DISETUJUI', 12, 19),
(305, '10', 'Hutan bakau terdiri dari spesies tanaman dengan kondisi habitatnya. Suatu bentuk adaptasi mangrove adalah', 'daun lebar', 'Akar nafas', 'akar berserat', 'daun berduri', '2', 'DISETUJUI', 12, 19),
(306, '10', 'Ujung Kulon memiliki endemit badak bercula tunggal. Bentuk perawatan hewan ini termasuk', 'koleksi', 'budaya', 'perlindungan', 'di situ', '3', 'DISETUJUI', 12, 19),
(307, '10', 'Wilayah Bengkulu dikenal sebagai daerah tanaman endemik, yaitu', 'Salacca edulis', 'Tectona grandis', 'Hibiscus rosasinensis', 'Raflesia arnoldi', '4', 'DISETUJUI', 12, 19),
(308, '10', 'Garis yang membatasi zona transisi ke Australia dikenal sebagai', 'penenun', 'garis wallace', 'khatulistiwa', ' panjangnya', '2', 'DISETUJUI', 12, 19),
(309, '10', 'Kebun Raya memiliki koleksi bunga Raflesia arnoldi. Bentuk pengawet ini termasuk', 'koleksi', 'budaya', 'di situ', 'ex situ', '4', 'DISETUJUI', 12, 19),
(310, '10', 'berikut yang merupakan hewan endemik yang ada di endonesia adalah,', 'komodo', 'tapir', 'jerapah', 'kanguru', '1', 'DISETUJUI', 12, 19),
(311, '10', 'Burung beo, kasuari dan burung cendrawasih adalah burung khas yang umum di daerah', 'Area Transisi Indonesia', 'Ujung Kulon, Jawa Barat', 'Indonesia bagian Timur', 'Wilayah Barat Indonesia', '3', 'DISETUJUI', 12, 19),
(312, '10', 'Pasangan hewan endemik dan tempatnya yang benar ', 'Maleo di Kalimantan', 'cenderawasih di papua', 'Anoa di Jawa Tengah', 'Badak Unicorn di Sulawesi', '2', 'DISETUJUI', 12, 19),
(313, '10', 'Keunikan keanekaragaman hayati Indonesia dan fakta bahwa ada spesies hewan dan tumbuhan endemik adalah', 'terlihat di ekuator', ' terdiri dari pulau-pulau', 'memiliki hutan hujan tropis', 'memiliki banyak jenis ikan', '3', 'DISETUJUI', 12, 19),
(314, '10', 'Wilayah Indonesia yang mempunyai ekosistem padang rumput adalah ', 'NTT dan Papua', 'NTB dan Maluku', 'Kalimantan dan Sulawesi', 'Jawa dan Bali', '1', 'DISETUJUI', 12, 19),
(315, '10', 'Varanus komodoensis adalah hewan khas yang ditemukan di Indonesia. Hewan ini endemik di daerah', ' Kepulauan Maluku', 'sekitar khatulistiwa', 'Wilayah Barat Indonesia', 'Indonesia Timur', '4', 'DISETUJUI', 12, 19),
(316, '10', 'Spesies langka berikut berasal dari Papua:', 'banteng', 'seekor gajah', 'burung cendrawasih', 'orangutan', '3', 'DISETUJUI', 12, 19),
(317, '10', 'Tindakan manusia berikut yang dapat mengurangi keanekaragaman hayati, kecuali', ' Penggunaan pestisida', 'Perubahan jenis tanaman', 'polusi', 'Penciptaan hutan konservasi', '4', 'DISETUJUI', 12, 19),
(318, '10', 'Berikut ini adalah tindakan manusia yang dapat meningkatkan keanekaragaman hayati, kecuali', ' perkembangan kembali', ' Buat taman kota', 'penggunaan pestisida', ' pembiakan', '3', 'DISETUJUI', 12, 19),
(319, '10', 'Penggundulan hutan harus memenuhi berbagai persyaratan untuk menjaga kelestarian, diantaranya', 'bersihkan dan tanam kembali', 'penebangan minimal\r\n', 'sistem logging selektif', 'penebangan maksimum', '3', 'DISETUJUI', 12, 19),
(320, '10', 'Keragaman genetik pada makhluk hidup dapat terjadi karena ', 'Ada beberapa spesies berbeda di tempat yang sama', 'Setiap spesies beradaptasi dengan lingkungan yang berbeda', 'jumlah dan komposisi bahan genetik yang berbeda', 'dihuni di satu tempat oleh beberapa populasi', '3', 'DISETUJUI', 12, 19),
(321, '10', 'Tanaman yang bijinya tidak dilindungi oleh danging buah?', 'angiosperma', 'gymnosperma', 'Spermatophyta', 'Embriophyta', '2', 'DISETUJUI', 12, 19),
(322, '10', 'Tanaman lumut disebut tanaman kosmopolitan karena', 'Kehidupan saprofit', 'Epiphytenleben', 'kehidupan parasit', '', '4', 'DISETUJUI', 12, 19),
(323, '10', 'Tanaman Ginkgo biloba dikelompokkan menjadi tanaman Gymnospermae ', 'Saya sudah punya biji', 'dapat membentuk biji yang dilindungi', 'bisa membuat bunga', 'biji buah yang tidak terlindungi', '4', 'DISETUJUI', 12, 19),
(324, '10', 'Penyebab biji atau buah yang dibantu oleh burung pada umunya memiliki ciri', ' Biji / buah kecil, ringan, lapang', 'Biji / buah memiliki rambut kelenjar', ' biji / buah kecil', 'Biji / buah memiliki daging yang tebal', '1', 'DISETUJUI', 12, 19),
(325, '10', 'Berbagai bentuk metagenesis pada kuku.\r\n1) zigot\r\n2) Protalium\r\n3) tanaman kuku\r\n4) Anteridium\r\n5) Arkegoniuim\r\nTahap metagenesis dari tanaman kuku, yang mewakili fase gametofit, adalah', '1, 2 dan 3', '1, 3 dan 4', ' 2, 3 dan 4', ' 2, 4 dan 5', '4', 'DISETUJUI', 12, 19),
(326, '10', 'Dalam metagenesis lumut, generasi diploid adalah â€¦', 'zigot', 'Sporophyt', ' Gametophyt', ' sporogonium', '2', 'DISETUJUI', 12, 19),
(327, '10', 'Untuk mengangkut sari-sari makanan, tumbuhan lumut menggunakan ', 'pembuluh', 'pembuluh transpor intravaskular', 'sel-sel parenkim', 'kapal pengangkut kosmik', '4', 'DISETUJUI', 12, 19),
(328, '10', 'Pernyataan berikut, yang membedakan antara tanaman dikotil dan monokotil, meliputi', 'Minat dalam kelipatan 2, 4 atau 5 kelipatan', 'Ujung akar monokotil dilindungi oleh coleoptiles', 'tanaman akar monokotil', ' tulang lembar dicot melengkung', '2', 'DISETUJUI', 12, 19),
(329, '10', 'Rhizoid pada lumut bertindak', 'menghasilkan spora', 'membentuk sel telur', ' membentuk sperma', ' Ambil air dan garam mineral', '4', 'DISETUJUI', 12, 19),
(330, '10', 'Dalam pemuliaan tanaman lumut mengalami fase sporophyte, yang berarti', 'Pertumbuhan spora', 'Generasi yang diploid', 'enerasi yang menghasilkan spora', 'generasi yang berumur pendek', '3', 'DISETUJUI', 12, 19),
(331, '10', 'Produksi pteridophyta, meiosis, terjadi pada suatu waktu', 'Pembentukan oosit dan spermatozoa', 'taji pembangunan', 'Sporulasi pada sporangium', 'Sporophytenbildung', '1', 'DISETUJUI', 12, 19),
(332, '10', 'Tumbuhan kuku, termasuk kuku Homospora, ', 'Selaginella sp.', ' Lycopodium sp.', 'Marchantia sp.', 'Spagnum sp.', '2', 'DISETUJUI', 12, 19),
(333, '10', 'Spora kuku yang rontok pada titik optimal tumbuh menjadi ', 'sporogonium', 'Protonem', 'Protalium', 'tanaman paku', '3', 'DISETUJUI', 12, 19),
(334, '10', 'Dasar yang membedakan pakis di homopori, heterospora dan pakis transisional adalah ', 'cara memperbanyak secara vegetatif', 'Jumlah spora yang dihasilkan', ' jenis reproduksi generatifnya', ' Jenis spora yang diproduksi', '4', 'DISETUJUI', 12, 19),
(335, '10', 'Seorang siswa mengamati tanaman dengan fitur yang berakar, tidak berbunga, ditaburkan, berdaun, batang bercabang. Biji ditemukan di Strobilus betina dan serbuk sari di Strobilus jantan. Kemudian tanaman dapat dibagi menjadi ', 'mycota', ' rumput laut', 'angiosperma', ' gymnosperma', '4', 'DISETUJUI', 12, 19),
(336, '10', 'Selaginella sp. jika dilihat oleh jenis spora yang diproduksi termasuk ', 'spora lurus', ' zoospora', 'Homospora', 'conidiospores', '1', 'DISETUJUI', 12, 19),
(337, '10', 'Tumbuhan kecil, klorofil, kokoh, berdaun, dan hidup di bebatuan dengan rizoid. Kemungkinan tanaman ini', 'Bryophyta', 'Preridophyta', 'gymnosperma', 'monokotil', '1', 'DISETUJUI', 12, 19),
(338, '10', 'Tumbuhan berikut termasuk angiosperma ', 'Pakis haji, pinus, damar dan gninjo', 'Cemara, pinus, damar dan pinang', 'Hajjarn, Harz, Gninjo dan buluh', 'Kelapa, tomat, dan pala', '4', 'DISETUJUI', 12, 19),
(339, '10', 'Kesamaan antara lumut dan pakis adalah', 'Sporophytenstruktur', 'Gametophytenstruktur', 'Roid dan sporofit', 'metagenesis', '4', 'DISETUJUI', 12, 19),
(340, '10', 'Konten institusional tanaman benih matang terdiri dari ', ' Inti oosit dan vegetatif', ' Inti sel telur, inti antipode dan inti sinergik', ' Inti sperma dan inti vegetatif', ' Inti sinergik, inti sel telur, inti antipode dan inti kandung kemih', '2', 'DISETUJUI', 12, 19),
(341, '10', 'Pada tanaman kuku, generasi diploid adalah', ' spora', ' Sporophyt', ' Gametophyt', 'Protalium', '2', 'DISETUJUI', 12, 19),
(342, '10', 'Moose berada dalam siklus hidup mereka', 'Gametophyt', 'Sporofit', 'Protonem', 'Potalium', '1', 'DISETUJUI', 12, 19),
(343, '10', 'Kapal pengangkut tidak ditemukan di pabrik.', 'Bryophyta', 'monokotil', 'Dicotyledonae', 'gymnosperma', '1', 'DISETUJUI', 12, 19),
(344, '10', 'Hepaticopsida adalah tanaman bipolar karena', ' gamet jantan dan betina diproduksi oleh satu orang', 'Pada individu, ada dua jenis spora', 'Seorang individu menghasilkan spora pria dan wanita', 'Setiap individu menghasilkan gametype', '4', 'DISETUJUI', 12, 19),
(345, '10', 'Porifera berarti dengan asalnya ', 'binatang berlubang', 'binatang berlubang', 'Hewan dengan flagela', 'hewan berpori', '4', 'DISETUJUI', 12, 19),
(346, '10', 'Nilai dari 2/5 x ( 2/3 + 1/6 ) adalah', ' 45/2 ', '1/6   ', '2/45 ', ' 1/3 ', '4', 'DISETUJUI', 11, 18),
(347, '10', 'Harga beli dari sebuah barang adalah RP. 45.000,00. Jika untungnya 0,222â€¦., maka harga jualnya', 'Rp.94.000;  ', 'Rp.10.000', 'Rp.55.000; ', '', '3', 'DISETUJUI', 11, 18),
(348, '10', 'Hasil dari 2Â¾ : Â¼ x 5/11 = ', '5', '5 9/11  ', ' 5 7/11  ', ' 24', '1', 'DISETUJUI', 11, 18),
(349, '10', 'Bentuk pecahan dari 2,6363636â€¦ adalahâ€¦', ' 2 11/7', '29/11  ', '29/7  ', '25/7 ', '2', 'DISETUJUI', 11, 18),
(350, '10', 'Sebuah ruangan berbentuk persegi panjang digambarkan skala 1 : 200 dengan panjang 2 cm dan lebar 3 cm. Luas ruang sebenarnya', '12cm2 ', '24cm2 ', '12m2   ', ' 24m2', '4', 'DISETUJUI', 11, 18),
(351, '10', 'Suatu gedung akan dibangun oleh 100 pekerja selama 60 minggu. Jika rencana penyelesaian dipercepat menjadi 50 minggu, maka banyaknya pekerja yang harus ditambah adalah', '20 orang', '40 orang ', '80 orang', ' 100 orang', '1', 'DISETUJUI', 11, 18),
(352, '10', ' Suatu gambar gedung berskala 1 : 500. Jika tanah tempat gedung tersebut berukuran 20 cm x 15 cm, maka luas tanah sebenarnya adalah', '7.500cm2', '75.000cm2', '7.500m2', ' 750m2', '3', 'DISETUJUI', 11, 18),
(353, '10', ' Jarak kota A dengan kota B sebenarnya 120 km dan dilukis dengan jarak 12 cm, maka jarak kota A dan kota C sebenarnya jika dalam lukisan berjarak 15 cm adalah', '  90 km ', ' 100 km ', ' 130 km ', ' 150 km ', '4', 'DISETUJUI', 11, 18),
(354, '10', ' Suatu peta berskala 1 : 2.500.000. jika jarak Surabaya â€“ Yogyakarta 350 km, maka dalam jarak peta berjarak', '12 cm', '13cm', '14cm', '15cm', '2', 'DISETUJUI', 11, 18),
(355, '10', ' Suatu mobil berukuran  4m x 2m dilukis berukuran 10 cm x 5 cm, maka skala lukisan tersebut adalah', '  1 : 400 ', ' 1 : 200  ', '1 : 300  ', ' 1 : 40', '2', 'DISETUJUI', 11, 18),
(356, '10', 'Pak Heri membeli sepasang sepatu, setelah harganya dipotong 20 % ia membayar sepasang sepatu itu sebesar Rp. 48.000,00. Besarnya potongan harga sepatu Pak Heri adalah', '  Rp. 9.600,00    ', 'Rp. 12.000,00  ', ' Rp. 15.000,00', ' Rp. 60.000,00', '2', 'DISETUJUI', 11, 18),
(357, '10', 'Diketahui log2 = p, log3 = q, dan log5 = r, harga log 1500 jika dinyatakan dalam p, q, dan r, adalah ', '  p + q + r         ', ' 2p + q + r   ', '  p + 2q + 3r  ', '  2p + q + 3r', '4', 'DISETUJUI', 11, 18),
(358, '10', 'Sederhanakanlah bentuk akar ini,  2 âˆš5 x ( 2 âˆš120 + 5 âˆš24 )\r\n', '3âˆš7 + âˆš3\r\n', '3 âˆš6 + 12âˆš5    ', '12âˆš6 + 3âˆš5    ', '3 âˆš6 + 12âˆš6   ', '2', 'DISETUJUI', 11, 18),
(359, '10', 'Thank you so much for helping me. I relaly... it', 'accept', 'agree', 'appreciate', 'deserve', '3', 'DISETUJUI', 13, 20),
(360, '10', 'A thousand thanks for all you hard work. I shall never.. it.', 'forego', 'forget', 'foretell', 'forbid', '2', 'DISETUJUI', 13, 20),
(361, '10', ' Thank you for all youâ€™ve done from the...of my heart', 'base', 'foundation', 'end', 'bottom', '4', 'DISETUJUI', 13, 20),
(362, '10', 'She.. that TV shows five times.', 'had', 'has', 'has seen', 'saw', '3', 'DISETUJUI', 13, 20),
(363, '10', '.... there ever been a war in the United States?', 'has', 'have', 'had', 'is', '1', 'DISETUJUI', 13, 20),
(364, '10', '.... you watched the movie yet?', 'are', 'have', 'has', 'can', '2', 'DISETUJUI', 13, 20),
(365, '10', 'Rani...her homework yet', 'finish', 'was finished', 'has not finished', 'finished', '3', 'DISETUJUI', 13, 20),
(366, '10', 'I donâ€™t like going out...night', 'in', 'on', 'at', 'with', '3', 'DISETUJUI', 13, 20),
(367, '10', ' iâ€™ll see you..Friday', 'at', 'in', 'or', 'on', '4', 'DISETUJUI', 13, 20),
(368, '10', 'Columbus made his first voyage from Europe to America.... 1942', 'at', 'in', 'on', 'or', '2', 'DISETUJUI', 13, 20),
(369, '10', 'Terry    : â€œAndy, I think youâ€™re the best one.â€\r\nAndy    : â€œ....â€', 'of course', 'nevermind', 'i am sorry', 'thank you', '4', 'DISETUJUI', 13, 20),
(370, '10', 'Doctors...many deadly diseases.', 'have cured', 'cure', 'cured', 'are cured', '1', 'DISETUJUI', 13, 20),
(371, '10', ' Will you be here.... the weekend?', 'in', 'or', 'and', 'at', '4', 'DISETUJUI', 13, 20),
(372, '10', 'Jean : â€œ I won a quiz and got new bicyle.â€\r\nErni : â€œ.....â€', 'of course', 'congratulations', 'thank you', 'you are welcome', '2', 'DISETUJUI', 13, 20),
(373, '10', 'The rain... since last morning', 'stop', 'has not stopped', 'is stop', 'stopped', '2', 'DISETUJUI', 13, 20),
(374, '10', 'My English...really... since I moved to Australia', 'had/improve', 'has/improved', 'is/improving', 'are/improved', '2', 'DISETUJUI', 13, 20),
(375, '10', 'Ami: â€œMay I see your dress?â€\r\nIcha    : â€œOf course, here it is.â€\r\nAmi : â€œWhat a nice dress.â€\r\nIcha : â€œ .... â€œ', 'thanks', 'i am sorry', 'congratulations', 'not at all', '1', 'DISETUJUI', 13, 20),
(376, '10', ' Ina    : â€œHappy Birthday, Susi.â€\r\nSusi : â€œThanks.â€\r\nIna : â€œItâ€™s a gift for you.â€\r\nSusi :...', 'of course', 'congratulations', 'wow, how nice it is', 'nevermind', '3', 'DISETUJUI', 13, 20),
(377, '10', ' Do you work...the evening?', 'in', 'at', 'on', 'or', '1', 'DISETUJUI', 13, 20),
(378, '10', 'Have you ever...him?', 'been met', 'met', 'meet', 'meeting', '2', 'DISETUJUI', 13, 20),
(379, '10', 'Mr. And Mrs. Anandra... that house in 1987', 'has bought', 'have bought', 'bought', 'buy', '2', 'DISETUJUI', 13, 20),
(380, '10', 'I ...any parties since I lived in this town', 'attend', 'attended', 'has attended', 'have attended', '4', 'DISETUJUI', 13, 20),
(381, '10', 'Anna... (not see) the movie â€œInceptionâ€ in the cinema yet.', 'is not seeing', 'does not see', 'have seen', 'has not seen', '4', 'DISETUJUI', 13, 20),
(382, '10', 'My birthday party will be celebrated .... Sunday .. 07.30 p.m.', 'in-at', 'on-at', 'in-on', 'on-in', '2', 'DISETUJUI', 13, 20),
(383, '10', 'They have visitid their grandmother....', 'several times', 'today', 'last week', 'yesterday', '1', 'DISETUJUI', 13, 20),
(384, '10', 'This is an expression of surprising....', 'Thank you', 'i dont belive that', 'i am fine, thank you', 'i would love you', '2', 'DISETUJUI', 13, 20),
(385, '10', ' Iâ€™m tired. Iâ€™m (go) to bed now.', 'gone', 'goes', 'go', 'going', '4', 'DISETUJUI', 13, 20),
(386, '10', 'Lisa is (stand) between Rina and Anne', 'stand up', 'stands', 'sitting', 'standing', '4', 'DISETUJUI', 13, 20),
(387, '10', ' Icha    : Do you know, my motorcycle has gone last night\r\nLusy : ....., tell me thatâ€™s not true.', 'that is allright', 'oh no', 'do not mention it', 'thank you', '3', 'DISETUJUI', 13, 20),
(388, '10', 'The population of the world....very fast.', 'is rising', 'rising', 'rise', 'being rise', '1', 'DISETUJUI', 13, 20),
(389, '10', 'Yumi    : â€œIâ€™d like to invite you to have a dinner on Saturday night.â€\r\nReno : â€œ.....â€\r\nYumi : â€œOk, Iâ€™ll wait for you.â€', 'that is impossible', 'sorry, i can not', 'thank you, i would love to', 'congratulations', '2', 'DISETUJUI', 13, 20),
(390, '10', 'Youâ€™re (work) hard today', 'is work', 'be working', 'working', 'worked', '3', 'DISETUJUI', 13, 20),
(391, '10', 'We can go out now. It...(not rain) any more.', 'was rain', 'raining', 'will be raining', 'is not raining', '4', 'DISETUJUI', 13, 20),
(392, '10', 'This is an expression of disbelief...', 'ok, see you then', 'not at all', 'thanks for comming', 'tell me that is not true', '4', 'DISETUJUI', 13, 20),
(393, '10', ' Is Suzan (work) this week?', 'worked', 'working', 'been worked', 'works', '2', 'DISETUJUI', 13, 20),
(394, '10', 'She (drive) to work', 'is driving', 'is driven', 'will driving', 'is drives', '1', 'DISETUJUI', 13, 20),
(395, '10', 'Andi : â€œIâ€™d like to invite you and our freinds to come to my fatherâ€™s villa.â€\r\nRony: â€œ....â€\r\nAndi : â€œOk, donâ€™t forget.â€', 'thanks', 'i am sorry', 'congratulation', 'thanks, i would love to', '4', 'DISETUJUI', 13, 20),
(396, '10', 'Ina : â€œDid you see my wallet? I lost my wallet since last morningâ€™\r\nSusi : â€œ....â€', 'thaht is good idea', 'oh really? i am sorry to hear that', 'nevermind', 'wow, how nice it it', '2', 'DISETUJUI', 13, 20),
(397, '10', 'Jack : Are you free on Sunday morning?\r\nTom : ...., I have a plan\r\nJack : Itâ€™s ok', 'i am awfully sorry', 'that is good idea', 'ok, see you there', '', '1', 'DISETUJUI', 13, 20),
(398, '10', ' Michelle .... begin medical school next year', 'is going to', 'go to', 'will go to', 'going to', '1', 'DISETUJUI', 13, 20),
(399, '10', 'â€œWould you like to come over for dinner next Saturday?â€\r\nWhat does the sentence tell about?', 'announcement', 'advertisement', 'invitation', 'gratitude', '3', 'DISETUJUI', 13, 20),
(400, '10', 'Barbara works for a company .... makes washing machines.', 'who', 'will', 'if', 'that', '4', 'DISETUJUI', 13, 20),
(401, '10', 'The book is about a girl .... won the race', 'which', 'and', 'who', 'that', '3', 'DISETUJUI', 13, 20),
(402, '10', 'Anti .... drive all the way to Jogjakarta', 'are go', 'is going to', 'go', 'are going to', '2', 'DISETUJUI', 13, 20),
(403, '10', 'â€œAttention, please! The train will arrive about 5 minutes....â€', 'announcement', 'advertisement', 'invitation', 'gratitude', '1', 'DISETUJUI', 13, 20),
(404, '10', ' I donâ€™t like people ..... never come on time.', 'when', 'where', 'that', 'who', '4', 'DISETUJUI', 13, 20),
(405, '10', 'The machine .... broke down has now been repaired.', 'that', 'whom', 'where', 'when', '1', 'DISETUJUI', 13, 20),
(406, '10', 'Rani : â€œIâ€™m so tired. Iâ€™m about to fall asleep.â€\r\nNian : â€œI .... you some coffe.â€', 'want', 'brought', 'will get', 'am', '3', 'DISETUJUI', 13, 20),
(407, '10', 'A dictionary is a book .... gives you the meaning of words', 'when', 'where', 'if', 'that', '4', 'DISETUJUI', 13, 20),
(408, '10', ' I promise you that I .... (not tell) anyone about your secret.', 'will telling', 'am not tell', 'would not tell', 'who tell', '3', 'DISETUJUI', 13, 20),
(409, '10', '. Alat  yang merupakan sarana untuk memasukkan data atau instruksi ke dalam komputer disebut', 'output device', 'input device', 'RAM', 'CD ROM', '2', 'DISETUJUI', 14, 21),
(410, '10', 'Untuk mengurangi intensitas radiasi dari layar monitor ke mata pengguna komputer, dapat menggunakan', '. screen saver', 'mouse', 'kaca mata', 'screen filter', '4', 'DISETUJUI', 14, 21),
(411, '10', 'Salah satu program aplikasi yang dapat digunakan untuk mengelola dan menjaga keamanan atau program dari kerusakan adalah', 'scandisk', 'microsoft excel', 'diskspace', 'accessories', '1', 'DISETUJUI', 14, 21),
(412, '10', 'Siklus pemprosesan data yang benar adalah', 'output -> proses -> input', 'output -> input -> proses', 'input -> proses -> output', 'proses -> input -> output', '3', 'DISETUJUI', 14, 21),
(413, '10', 'Berikut ini bukan termasuk software adalah', '. pascal', 'cobol', 'microsoft word', 'cd room', '4', 'DISETUJUI', 14, 21),
(414, '10', '. Peralatan keras yang berfungsi untuk menjalankan instruksi-instruksi yang diberikan dan mengeluarkannya dalam bentuk informasi disebut', 'hardware', 'software', 'hard disk', 'input device', '1', 'DISETUJUI', 14, 21),
(415, '10', 'Orang yang menggunakan komputer disebut', 'brainware', 'hardware', 'software', 'scanner', '1', 'DISETUJUI', 14, 21),
(416, '10', 'Alat yang digunakan untuk memindahkan gambar dari kertas ke komputer disebutâ€¦.', 'printer', 'lighpen trackball', 'scanner', 'mouse', '3', 'DISETUJUI', 14, 21),
(417, '10', 'Alat yang digunakan untuk membaca CD/DVD disebut', 'plotter', 'CD/DVD ROM', 'phometric', 'CPU', '2', 'DISETUJUI', 14, 21),
(418, '10', 'Proses hidupnya komputer disebut', 'loading', 'booting', 'starting', 'browsing', '3', 'DISETUJUI', 14, 21),
(419, '10', 'Tampilan awal microsoft windows disebut', 'laptop', 'web shot', 'desktop', 'taksbar', '3', 'DISETUJUI', 14, 21),
(420, '10', 'Tempat yang digunakan untuk menyimpan file yang sejenis disebut', 'explorer', 'drive', 'folder', 'dokumen', '3', 'DISETUJUI', 14, 21),
(421, '10', 'Berikut ini yang tidak termasuk menu bar dalam microsoft office word 2010 adalah', 'file', 'view', 'insert', 'print', '4', 'DISETUJUI', 14, 21),
(422, '10', 'Berikut ini yang tidak termasuk media penyimpanan data adalah', 'floppy disk', 'mouse', 'hard disk', 'compact disk', '2', 'DISETUJUI', 14, 21),
(423, '10', 'Selain dengan mengklik tanda silang disudut kanan atas, untuk menutup jendela yang aktif, anda dapat juga menekan tombol', 'file â€“ print', 'file â€“ save', 'file â€“ close', 'file â€“ exit word', '3', 'DISETUJUI', 14, 21),
(424, '10', 'Untuk keluar dari Microsoft Word dan menuju ke layar desktop, digunakan tombol', 'file â€“ print', 'file â€“ save', 'file â€“ close', 'file â€“ exit word', '4', 'DISETUJUI', 14, 21),
(425, '10', '. LAN adalah kepanjangan dari', '. Local area network', 'Local area netting', 'local asean network', 'location area network', '1', 'DISETUJUI', 14, 21),
(426, '10', 'Jenis jaringan yang digunakan untuk berkomunikasi antarkomputer dalam satu wilayah provinsi adalah', 'LAN', 'WAN', 'MAN', 'GAN', '3', 'DISETUJUI', 14, 21),
(427, '10', 'Jarak yang baik utuk bekerja dengan komputer pada jarak pandang yang benar adalah', '20 cm', '30 cm', '40 cm', '', '4', 'DISETUJUI', 14, 21),
(428, '10', 'Media penyimpanan optis yang benar adalah', 'keping CD', 'hardsik', 'flashdisk', 'software', '1', 'DISETUJUI', 14, 21),
(429, '10', 'Orang yang mengendalikan data pada sebuah system program komputer disebut dengan', 'admin', 'operator', 'analisis', 'programmer', '4', 'DISETUJUI', 14, 21),
(430, '10', 'Program aplikasi yang digunakan untuk membuat bentuk pengolah kata adalahâ€¦.\r\n', 'macromedia flash\r\n', 'paint', 'microsoft word', 'photoshop', '3', 'DISETUJUI', 14, 21),
(431, '10', 'Hak ekslusif bagi pencipta atau pemegang hak cipta untuk mengumumkan atau memperbanyak ciptaannya disebut', 'hak paten', 'hak cipta', 'hak asasi', 'hak milik', '4', 'DISETUJUI', 14, 21),
(432, '10', 'Berikut ini tidak termasuk dalam hak atas kekayaan intelektual adalah', 'hak cipta', 'hak paten', 'hak dagang', 'rahasia dagang', '1', 'DISETUJUI', 14, 21),
(433, '10', 'Orang yang menjiplak hasil karya orang lain disebut', 'writer', 'writor', 'plagiater', 'plagiator', '4', 'DISETUJUI', 14, 21),
(434, '10', 'Alat pada CPU yang dapat digunakan untuk memperbanyak data pada CD disebut', 'CD room', 'CD writer', 'compact disk', 'scanner', '1', 'DISETUJUI', 14, 21),
(435, '10', 'Undang-undang di Indonesia yang memuat tentang HAKI adalah', 'UU nomor 19 tahun 2002', 'UU nomor 19 tahun 2003', 'UU nomor 19 tahun 2004', 'UU nomor 19 tahun 2005', '1', 'DISETUJUI', 14, 21),
(436, '10', 'Lama hukuman penjara bagi orang yang dengan sengaja melanggar hak cipta adalah', '2, 5 tahun', '5 tahun', '7 tahun', '10 tahun', '2', 'DISETUJUI', 14, 21),
(437, '10', 'Denda maksimal yang dibayar oleh para pelanggar hak cipta adalah', 'Rp. 5.000.000,00', 'Rp. 50.000.000,00', 'Rp. 500.000.000,00', 'Rp. 150.000.000,00', '3', 'DISETUJUI', 14, 21),
(438, '10', 'Hak yang diberikan pemerintah kepada pencipta untuk memperbanyak hasil ciptaannya disebut', 'hak cipta', 'hak intelektual', 'hak royalti', 'hak paten', '1', 'DISETUJUI', 14, 21),
(439, '10', 'Software yang diperbanyak tanpa seizin pemegang hak cipta, berarti dibuat secara', 'ilegal', 'asli', 'bajakan', 'legal', '1', 'DISETUJUI', 14, 21),
(440, '10', 'Jenis jaringan yang digunakan untuk melakukan komunikasi antarkomputer dalam satu gedung disebut', 'MAN', 'GAN', 'LAN', 'WAN', '3', 'DISETUJUI', 14, 21),
(441, '10', 'Jenis jaringan yang digunakan untuk melakukan komunikasi antarkomputer dibeberapa benua disebut', 'LAN', 'MAN', 'GAN', 'WAN', '4', 'DISETUJUI', 14, 21),
(442, '10', 'Jenis topologi jaringan yang menyerupai bentuk cincin disebut', 'topologi bus', 'topologi  ring', 'topologi  star', 'topologi  tree', '2', 'DISETUJUI', 14, 21),
(443, '10', 'Dalam suatu jaringan, komputer yang dipakai untuk mengendalikan client dan merupakan pusat informasi dinamakan komputer', 'server', 'workstation', 'pusat', 'terpadu', '1', 'DISETUJUI', 14, 21),
(444, '10', 'System bilangan basis 2 disebut dengan', 'decimal', 'hexadesimal', 'biner', 'okta', '3', 'DISETUJUI', 14, 21),
(445, '10', 'Micro SD termasuk dalam media yang benar adalah', 'penyimpanan', 'outputdata', 'antivirus', 'software', '1', 'DISETUJUI', 14, 21),
(446, '10', 'Kepanjangan yang benar dari bit adalah', 'trinery digit', '. binary digit', 'byte persecond', 'brainware intelegence', '2', 'DISETUJUI', 14, 21),
(447, '10', 'Orang yang membuat program komputer disebut dengan', 'admin', 'operator', 'analisis', 'programmer', '4', 'DISETUJUI', 14, 21),
(448, '10', 'Perangkat keras yang digunakan untuk mencetak data hasil pemrosesan komputer disebut', 'monitor', 'printer', 'RAM', 'hardisk', '2', 'DISETUJUI', 14, 21),
(449, '10', 'Program MS Excel termasuk kedalam aplikasi', 'Word processing', 'Spreadsheet                                                          ', 'Presentation', 'Assembly', '2', 'DISETUJUI', 14, 21),
(450, '10', 'Sebuah file MS Excel identik dengan', 'sebuah tabel kerja                                               ', 'sebuah lembar kerja                                            ', 'sebuah Cell', 'sebuah buku kerja', '4', 'DISETUJUI', 14, 21),
(451, '10', 'Contoh Program pengolah kata dibawah ini, kecuali', 'Notepad                                                              ', 'MS Word 2010', 'Ms Access 2003                                                 ', 'MS Word 2007', '3', 'DISETUJUI', 14, 21),
(452, '10', 'Contoh program Sistem Operasi adalah, kecuali', 'Linux                                                                  ', 'Mac OS                                                               ', 'Unix', '', '3', 'DISETUJUI', 14, 21),
(453, '10', 'Shortkey untuk menampilkan KATA SEPERTI INI adalah', '(Ctrl + U) + (Ctrl+ I)                                              ', '(Ctrl+ B) + (Ctrl+ I)                                               ', '(Ctrl + S) + (Ctrl+J)', '(Ctrl + B) + (Ctrl + U)', '2', 'DISETUJUI', 14, 21),
(454, '10', 'Tampilan layar setelah komputer menyala sempurna disebut', 'Wallpaper                                                         ', 'Background                                                      ', 'Screensaver', 'Desktop', '4', 'DISETUJUI', 14, 21),
(455, '10', 'Pertemuan antara baris dan kolom disebut', 'Column                                                             ', 'Row                                                                   ', 'Cell', 'Range', '3', 'DISETUJUI', 14, 21),
(456, '10', 'Kumpulan dari Cell yang aktif dinamakan', 'Column                                                             ', 'Row                                                                   ', 'Range', 'Workbook', '3', 'DISETUJUI', 14, 21),
(457, '10', 'Perintah untuk menyimpan data menggunakan tombol kombinasi keyboard yang benar adalah', 'Office Button - Save As                                    ', 'Ctrl + S                                                              ', 'File - Save', 'Alt + S', '2', 'DISETUJUI', 14, 21),
(458, '10', 'Jumlah baris pada MS Excel 2007 adalah', '1-256 ', '1-25', 'A-XFD', '1-1.048.576', '4', 'DISETUJUI', 14, 21),
(459, '11', 'Objek yang tidak lagi dianggap dibutuhkan oleh komunitas atau objek yang dibuang karena dianggap tidak berharga atau tidak perlu dianggap.', 'buang', 'polutan', 'partikel', 'atom', '1', 'DISETUJUI', 12, 19),
(460, '11', 'Faktor-faktor yang mempengaruhi kualitas limbah adalah.', 'buang', 'limbah organik', 'limbah anorganik', 'binatang mati', '1', 'DISETUJUI', 12, 19),
(461, '11', 'Berikut ini adalah karakteristik limbah, kecuali.', 'Sangat kecil / kecil', 'dinamis', 'Dampak luas', 'statis', '4', 'DISETUJUI', 12, 19),
(462, '10', 'siapa Tuhan mu', 'Allah', 'Tuhan', 'Gusti', 'Pangeran', '1', 'DISETUJUI', 5, 6),
(463, '10', 'apa dasar negara', 'pancagila', 'pancasila', 'pancasona', 'pancawarna', '2', 'DIREVIEW', 11, 12),
(464, '12', 'siapa nabimu', 'Adam A.S', 'Idris A.s', 'Daud A.s', 'Gak ada yg bener', '4', 'DISETUJUI', 11, 6),
(465, '12', 'apa agamamu', 'kristen', 'konghuchu', 'hindu', 'islam dong', '4', 'DISETUJUI', 11, 6),
(466, '12', 'nama tempat ibadah agama islam', 'gereja', 'vihara', 'masjid', 'emperan mall', '3', 'DISETUJUI', 11, 6),
(467, '12', 'syarat masuk islam', 'ucapan selamat natal', 'ucapan idul fitri', 'ucapan selamat pagi', 'ucapan kalimat syahadatain', '4', 'DIREVIEW', 11, 6),
(478, '10', 'wewewe', 'wewe', 'ewe', 'ewew', 'eeee', '3', 'DISETUJUI', 3, 3),
(479, '10', 's', 's', 's', 's', 's', '2', 'DIREVIEW', 3, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `wakasek`
--

CREATE TABLE `wakasek` (
  `id_wakasek` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `wakasek`
--

INSERT INTO `wakasek` (`id_wakasek`, `id_guru`) VALUES
(1, 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD UNIQUE KEY `nip` (`nip`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`),
  ADD UNIQUE KEY `nip` (`nip`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`),
  ADD KEY `id_mapel` (`id_mapel`),
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`),
  ADD UNIQUE KEY `nisn` (`nisn`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indeks untuk tabel `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`id_soal`),
  ADD KEY `id_mapel` (`id_mapel`),
  ADD KEY `id_guru` (`id_guru`);

--
-- Indeks untuk tabel `wakasek`
--
ALTER TABLE `wakasek`
  ADD PRIMARY KEY (`id_wakasek`),
  ADD KEY `id_guru` (`id_guru`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `guru`
--
ALTER TABLE `guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id_mapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=310;

--
-- AUTO_INCREMENT untuk tabel `soal`
--
ALTER TABLE `soal`
  MODIFY `id_soal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=487;

--
-- AUTO_INCREMENT untuk tabel `wakasek`
--
ALTER TABLE `wakasek`
  MODIFY `id_wakasek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD CONSTRAINT `guru_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`);

--
-- Ketidakleluasaan untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`),
  ADD CONSTRAINT `nilai_ibfk_2` FOREIGN KEY (`id_mapel`) REFERENCES `mapel` (`id_mapel`);

--
-- Ketidakleluasaan untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`),
  ADD CONSTRAINT `siswa_ibfk_2` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`);

--
-- Ketidakleluasaan untuk tabel `soal`
--
ALTER TABLE `soal`
  ADD CONSTRAINT `soal_ibfk_1` FOREIGN KEY (`id_mapel`) REFERENCES `mapel` (`id_mapel`),
  ADD CONSTRAINT `soal_ibfk_2` FOREIGN KEY (`id_guru`) REFERENCES `guru` (`id_guru`);

--
-- Ketidakleluasaan untuk tabel `wakasek`
--
ALTER TABLE `wakasek`
  ADD CONSTRAINT `wakasek_ibfk_1` FOREIGN KEY (`id_guru`) REFERENCES `guru` (`id_guru`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
