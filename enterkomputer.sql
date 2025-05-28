-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2025 at 06:08 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `enterkomputer`
--

-- --------------------------------------------------------

--
-- Table structure for table `cabang`
--

CREATE TABLE `cabang` (
  `id_cabang` int(11) NOT NULL,
  `nama_cabang` varchar(100) DEFAULT NULL,
  `no_telpon` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `lokasi` varchar(255) DEFAULT NULL,
  `diupdate_pada` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cabang`
--

INSERT INTO `cabang` (`id_cabang`, `nama_cabang`, `no_telpon`, `email`, `lokasi`, `diupdate_pada`) VALUES
(1, 'Cabang Jakarta', '021555888', 'jakarta@enterkomputer.com', 'Jl. Gatot Subroto No. 1', '2025-05-25 10:08:22'),
(2, 'Cabang Bandung', '022666999', 'bandung@enterkomputer.com', 'Jl. Asia Afrika No. 3', '2025-05-25 10:08:22');

-- --------------------------------------------------------

--
-- Table structure for table `departemen`
--

CREATE TABLE `departemen` (
  `id_departemen` int(11) NOT NULL,
  `nama_departemen` varchar(100) NOT NULL,
  `gaji` int(11) NOT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departemen`
--

INSERT INTO `departemen` (`id_departemen`, `nama_departemen`, `gaji`, `deskripsi`) VALUES
(1, 'Sales', 8000000, 'Departemen promosi dan penjualan'),
(2, 'Customer Service', 6000000, 'Pengurus kasir dan membantu customer dalam membeli'),
(3, 'Technical Service', 8000000, 'Mengerjakan permintaan pelanggan dalam pemasangan produk atau perakitan');

-- --------------------------------------------------------

--
-- Table structure for table `item_pesanan`
--

CREATE TABLE `item_pesanan` (
  `id_item_pesanan` int(11) NOT NULL,
  `id_pesanan` int(11) DEFAULT NULL,
  `id_produk` int(11) DEFAULT NULL,
  `kuantitas` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item_pesanan`
--

INSERT INTO `item_pesanan` (`id_item_pesanan`, `id_pesanan`, `id_produk`, `kuantitas`, `subtotal`) VALUES
(1, 1, 1, 1, 277000),
(2, 1, 5, 1, 1504000),
(3, 2, 2, 1, 2580000),
(4, 3, 3, 1, 1052000),
(5, 3, 7, 1, 405000),
(6, 4, 4, 1, 14082000),
(7, 5, 8, 2, 310000),
(8, 6, 10, 1, 14748000),
(9, 7, 14, 1, 1011000),
(10, 7, 15, 1, 112000),
(11, 8, 17, 1, 406000),
(12, 9, 18, 2, 742000),
(13, 10, 21, 1, 2335000),
(14, 11, 22, 1, 1312000),
(15, 12, 23, 1, 1841000),
(16, 13, 25, 1, 13114000),
(17, 14, 26, 1, 8558000),
(18, 15, 27, 3, 372000),
(19, 16, 28, 1, 692000),
(20, 17, 29, 1, 13151000),
(21, 18, 9, 1, 101000),
(22, 19, 6, 1, 2887000),
(23, 20, 16, 2, 388000),
(24, 21, 20, 1, 209000),
(25, 22, 11, 1, 175000),
(26, 23, 19, 1, 1359000),
(27, 24, 12, 1, 2427000),
(28, 25, 13, 1, 9021000);

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tanggal_mulai_kerja` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `nomor_telepon` varchar(20) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kota` varchar(50) DEFAULT NULL,
  `provinsi` varchar(50) DEFAULT NULL,
  `kode_pos` varchar(10) DEFAULT NULL,
  `id_departemen` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nama`, `tanggal_mulai_kerja`, `email`, `nomor_telepon`, `alamat`, `kota`, `provinsi`, `kode_pos`, `id_departemen`) VALUES
(1, 'Raihan Wiraseno', '2021-01-15', 'omibno22@gmail.com', '0812284142', 'Jl. Griyasaka No.27A', 'Jakarta', 'DKI Jakarta', '10983', 2),
(2, 'Yudi Wibowo', '2020-05-20', 'yudii2@gmail.com', '00888514', 'Jl. Bromo No. 2', 'Jakarta', 'DKI Jakarta', '51525', 2),
(3, 'Zev Hadid Santoso', '2022-05-10', 'sussybaka@gmail.com', '081241824', 'Jl. Biknss No. 1', 'Jakarta', 'Jawa Barat', '12323', 3),
(4, 'Muhammad Algifahri', '2022-10-20', 'rimzzz@gmail.com', '084124792', 'Jl. Germanyy No. 3', 'Jakarta', 'Jawa Barat', '10000', 3);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(59) NOT NULL,
  `nomor_telepon` varchar(20) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kota` varchar(50) DEFAULT NULL,
  `provinsi` varchar(50) DEFAULT NULL,
  `kode_pos` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama`, `email`, `nomor_telepon`, `alamat`, `kota`, `provinsi`, `kode_pos`) VALUES
(1, 'Budi Santoso', 'budi@example.com', '081234567891', 'Jl. Melati No. 8', 'Surabaya', 'Jawa Timur', '60234'),
(2, 'Rina Putri', 'rina@example.com', '082123456789', 'Jl. Cempaka No. 3', 'Medan', 'Sumatera Utara', '20151'),
(3, 'Andi Wijaya', 'andi@example.com', '0811111111', 'Jl. Kenanga No. 2', 'Jakarta', 'DKI Jakarta', '10110'),
(4, 'Siti Aminah', 'siti@example.com', '0822222222', 'Jl. Mawar No. 4', 'Bandung', 'Jawa Barat', '40234'),
(5, 'Doni Saputra', 'doni@example.com', '0833333333', 'Jl. Anggrek No. 9', 'Semarang', 'Jawa Tengah', '50211'),
(6, 'Lina Marlina', 'lina@example.com', '0844444444', 'Jl. Melur No. 6', 'Yogyakarta', 'DI Yogyakarta', '55111'),
(7, 'Rudi Hartono', 'rudi@example.com', '0855555555', 'Jl. Dahlia No. 10', 'Makassar', 'Sulawesi Selatan', '90123'),
(8, 'Galih Prasetya', 'galihp@example.com', '081278456789', 'Jl. Angsana No. 15', 'Bekasi', 'Jawa Barat', '17142'),
(9, 'Fajar Kurniawan', 'fajar.k@example.com', '081312345678', 'Jl. Sukamaju No. 20', 'Bogor', 'Jawa Barat', '16120'),
(10, 'Dewi Lestari', 'dewi.l@example.com', '085798765432', 'Jl. Damai Sejahtera No. 5', 'Depok', 'Jawa Barat', '16410'),
(11, 'Hari Susanto', 'hari.s@example.com', '087811223344', 'Jl. Cendrawasih No. 12', 'Tangerang', 'Banten', '15130'),
(12, 'Nina Adelia', 'nina.a@example.com', '081900001111', 'Jl. Kembang Sepatu No. 7', 'Bekasi', 'Jawa Barat', '17145'),
(13, 'Agus Salim', 'agus.s@example.com', '082344556677', 'Jl. Proklamasi No. 30', 'Jakarta', 'DKI Jakarta', '10320');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id_pesanan` int(11) NOT NULL,
  `id_pelanggan` int(11) DEFAULT NULL,
  `id_karyawan` int(11) DEFAULT NULL,
  `tanggal_pesanan` timestamp NOT NULL DEFAULT current_timestamp(),
  `jumlah_total` int(11) NOT NULL,
  `metode_pembayaran` varchar(50) DEFAULT NULL,
  `kembalian` int(11) NOT NULL,
  `kode_invoice` varchar(20) NOT NULL,
  `no_pickup` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id_pesanan`, `id_pelanggan`, `id_karyawan`, `tanggal_pesanan`, `jumlah_total`, `metode_pembayaran`, `kembalian`, `kode_invoice`, `no_pickup`) VALUES
(1, 1, 2, '2025-05-25 10:08:19', 1781000, 'Cash', 219000, 'INV-20250525-001', 'PKP-20250525-001'),
(2, 2, 1, '2025-05-25 10:08:19', 2580000, 'Transfer Bank', 0, 'INV-20250525-002', 'PKP-20250525-002'),
(3, 3, 1, '2025-05-25 10:08:19', 1457000, 'Cash', 43000, 'INV-20250525-003', 'PKP-20250525-003'),
(4, 4, 2, '2025-05-25 10:08:19', 14082000, 'Transfer Bank', 0, 'INV-20250525-004', 'PKP-20250525-004'),
(5, 5, 4, '2025-05-25 10:08:19', 310000, 'Cash', 40000, 'INV-20250525-005', 'PKP-20250525-005'),
(6, 6, 3, '2025-05-25 10:08:19', 14748000, 'Transfer Bank', 0, 'INV-20250524-006', 'PKP-20250524-006'),
(7, 7, 2, '2025-05-25 10:08:19', 1123000, 'Cash', 77000, 'INV-20250524-007', 'PKP-20250524-007'),
(8, 8, 1, '2025-05-25 10:08:19', 406000, 'Cash', 94000, 'INV-20250524-008', 'PKP-20250524-008'),
(9, 8, 3, '2025-05-25 10:08:19', 742000, 'Transfer Bank', 0, 'INV-20250523-009', 'PKP-20250523-009'),
(10, 9, 4, '2025-05-25 10:08:19', 2335000, 'Cash', 165000, 'INV-20250523-010', 'PKP-20250523-010'),
(11, 10, 1, '2025-05-25 10:08:19', 1312000, 'Transfer Bank', 0, 'INV-20250523-011', 'PKP-20250523-011'),
(12, 11, 2, '2025-05-25 10:08:19', 1841000, 'Cash', 159000, 'INV-20250522-012', 'PKP-20250522-012'),
(13, 12, 3, '2025-05-25 10:08:19', 13114000, 'Transfer Bank', 0, 'INV-20250522-013', 'PKP-20250522-013'),
(14, 1, 4, '2025-05-25 10:08:19', 8558000, 'Cash', 442000, 'INV-20250522-014', 'PKP-20250522-014'),
(15, 2, 1, '2025-05-25 10:08:19', 372000, 'Transfer Bank', 0, 'INV-20250521-015', 'PKP-20250521-015'),
(16, 3, 2, '2025-05-25 10:08:19', 692000, 'Cash', 8000, 'INV-20250521-016', 'PKP-20250521-016'),
(17, 4, 3, '2025-05-25 10:08:19', 13151000, 'Transfer Bank', 0, 'INV-20250521-017', 'PKP-20250521-017'),
(18, 5, 4, '2025-05-25 10:08:19', 101000, 'Cash', 49000, 'INV-20250520-018', 'PKP-20250520-018'),
(19, 6, 1, '2025-05-25 10:08:19', 2887000, 'Transfer Bank', 0, 'INV-20250520-019', 'PKP-20250520-019'),
(20, 7, 2, '2025-05-25 10:08:19', 388000, 'Cash', 12000, 'INV-20250520-020', 'PKP-20250520-020'),
(21, 8, 3, '2025-05-25 10:08:19', 209000, 'Transfer Bank', 0, 'INV-20250519-021', 'PKP-20250519-021'),
(22, 8, 4, '2025-05-25 10:08:19', 175000, 'Cash', 25000, 'INV-20250519-022', 'PKP-20250519-022'),
(23, 9, 1, '2025-05-25 10:08:19', 1359000, 'Transfer Bank', 0, 'INV-20250519-023', 'PKP-20250519-023'),
(24, 10, 2, '2025-05-25 10:08:19', 2427000, 'Cash', 73000, 'INV-20250518-024', 'PKP-20250518-024'),
(25, 11, 3, '2025-05-25 10:08:19', 9021000, 'Transfer Bank', 0, 'INV-20250518-025', 'PKP-20250518-025');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `kategori`, `deskripsi`, `harga`, `stok`) VALUES
(1, 'Webcam Logitech 361', 'Aksesori', 'Kualitas gambar jernih', 277000, 48),
(2, 'Printer Canon 125', 'Monitor', 'Kecepatan transfer tinggi', 2580000, 12),
(3, 'Harddisk WD 545', 'Penyimpanan', 'Performa tinggi dan hemat daya', 1052000, 70),
(4, 'Headset Rexus 307', 'Laptop', 'Desain ergonomis', 14082000, 3),
(5, 'Mouse Xiaomi 502', 'Printer', 'Kualitas gambar jernih', 1504000, 7),
(6, 'Monitor LG 310', 'Printer', 'Kecepatan transfer tinggi', 2887000, 9),
(7, 'Cooling Pad NYK 532', 'Peripheral', 'Kualitas gambar jernih', 405000, 51),
(8, 'Keyboard Mechanical Rexus 660', 'Peripheral', 'Cocok untuk keperluan kerja dan hiburan', 155000, 49),
(9, 'Headset Rexus 92', 'Aksesori', 'Mendukung cetak warna dan hitam putih', 101000, 40),
(10, 'Laptop HP 397', 'Laptop', 'Desain ergonomis', 14748000, 6),
(11, 'Webcam Logitech 744', 'Aksesori', 'Performa tinggi dan hemat daya', 175000, 12),
(12, 'Keyboard Mechanical Rexus 597', 'Printer', 'Kualitas gambar jernih', 2427000, 5),
(13, 'Keyboard Mechanical Rexus 746', 'Laptop', 'Mendukung cetak warna dan hitam putih', 9021000, 6),
(14, 'Mousepad SteelSeries 24', 'Penyimpanan', 'Dukungan audio stereo', 1011000, 48),
(15, 'Monitor LG 971', 'Penyimpanan', 'Kualitas gambar jernih', 112000, 12),
(16, 'Harddisk Seagate 359', 'Peripheral', 'Kecepatan transfer tinggi', 194000, 55),
(17, 'Printer Epson 406', 'Peripheral', 'Cocok untuk keperluan kerja dan hiburan', 406000, 24),
(18, 'Laptop Lenovo 252', 'Peripheral', 'Dukungan audio stereo', 371000, 86),
(19, 'Monitor LG 533', 'Penyimpanan', 'Kecepatan transfer tinggi', 1359000, 99),
(20, 'Monitor LG 166', 'Aksesori', 'Kecepatan transfer tinggi', 209000, 61),
(21, 'Flashdisk Toshiba 654', 'Monitor', 'Desain ergonomis', 2334798, 15),
(22, 'Keyboard Mechanical Rexus 907', 'Printer', 'Cocok untuk keperluan kerja dan hiburan', 1312000, 11),
(23, 'Webcam Logitech 962', 'Printer', 'Desain ergonomis', 1841000, 14),
(24, 'Webcam Logitech 378', 'Peripheral', 'Kualitas gambar jernih', 296000, 36),
(25, 'Monitor Samsung 414', 'Laptop', 'Dukungan audio stereo', 13114000, 5),
(26, 'Keyboard Mechanical Rexus 615', 'Laptop', 'Mendukung cetak warna dan hitam putih', 8558000, 7),
(27, 'Harddisk Seagate 125', 'Penyimpanan', 'Dukungan audio stereo', 124000, 21),
(28, 'Keyboard Logitech 32', 'Penyimpanan', 'Kecepatan transfer tinggi', 692000, 42),
(29, 'Printer Epson 754', 'Laptop', 'Mendukung cetak warna dan hitam putih', 13151000, 7);

-- --------------------------------------------------------

--
-- Table structure for table `produk_supplier`
--

CREATE TABLE `produk_supplier` (
  `id_produk` int(11) NOT NULL,
  `id_supplier` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk_supplier`
--

INSERT INTO `produk_supplier` (`id_produk`, `id_supplier`) VALUES
(1, 2),
(1, 5),
(1, 10),
(2, 4),
(2, 7),
(3, 2),
(3, 8),
(3, 12),
(4, 4),
(4, 15),
(5, 2),
(5, 6),
(6, 1),
(6, 3),
(6, 14),
(7, 3),
(7, 9),
(8, 2),
(8, 5),
(8, 11),
(9, 4),
(9, 16),
(10, 1),
(10, 7),
(10, 13),
(11, 3),
(11, 10),
(12, 1),
(12, 4),
(12, 12),
(13, 1),
(13, 8),
(14, 1),
(14, 6),
(14, 14),
(15, 4),
(15, 9),
(16, 1),
(16, 5),
(16, 15),
(17, 3),
(17, 7),
(18, 3),
(18, 11),
(18, 16),
(19, 1),
(19, 10),
(20, 2),
(20, 5),
(20, 13),
(21, 3),
(21, 12),
(22, 4),
(22, 8),
(22, 14),
(23, 4),
(23, 9),
(24, 3),
(24, 5),
(24, 15),
(25, 3),
(25, 7),
(26, 3),
(26, 6),
(26, 16),
(27, 5),
(27, 11),
(28, 3),
(28, 9),
(28, 13),
(29, 5),
(29, 10);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int(11) NOT NULL,
  `nama_supplier` varchar(100) NOT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kota` varchar(50) DEFAULT NULL,
  `provinsi` varchar(50) DEFAULT NULL,
  `kode_pos` varchar(10) DEFAULT NULL,
  `nomor_telepon` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama_supplier`, `alamat`, `kota`, `provinsi`, `kode_pos`, `nomor_telepon`, `email`) VALUES
(1, 'PT Sumber Elektronik', 'Jl. Industri No. 7', 'Jakarta', 'DKI Jakarta', '10120', '0211234567', 'supplier1@example.com'),
(2, 'CV Teknologi Maju', 'Jl. Teknik No. 12', 'Bandung', 'Jawa Barat', '40123', '0229876543', 'supplier2@example.com'),
(3, 'PT Elektronik Nusantara', 'Jl. Merdeka No. 45', 'Jakarta', 'DKI Jakarta', '10110', '02112345678', 'elektronik.nusantara@example.com'),
(4, 'CV Tekno Mandiri', 'Jl. Sudirman No. 12', 'Bandung', 'Jawa Barat', '40112', '02298765432', 'tekno.mandiri@example.com'),
(5, 'UD Komputer Jaya', 'Jl. Pahlawan No. 8', 'Surabaya', 'Jawa Timur', '60241', '03145678901', 'komputer.jaya@example.com'),
(6, 'PT Gadget Indonesia', 'Jl. Thamrin No. 22', 'Medan', 'Sumatera Utara', '20112', '06123456789', 'gadget.indonesia@example.com'),
(7, 'CV Teknologi Baru', 'Jl. Diponegoro No. 15', 'Semarang', 'Jawa Tengah', '50111', '02456789012', 'teknologi.baru@example.com'),
(8, 'PT Surya Elektronik', 'Jl. Gajah Mada No. 33', 'Yogyakarta', 'DI Yogyakarta', '55111', '02745678901', 'surya.elektronik@example.com'),
(9, 'UD Komputer Plus', 'Jl. Ahmad Yani No. 7', 'Denpasar', 'Bali', '80222', '03612345678', 'komputer.plus@example.com'),
(10, 'PT Digital Solution', 'Jl. S Parman No. 18', 'Makassar', 'Sulawesi Selatan', '90123', '04198765432', 'digital.solution@example.com'),
(11, 'CV Tech Innovasi', 'Jl. Hayam Wuruk No. 5', 'Palembang', 'Sumatera Selatan', '30111', '07115678901', 'tech.innovasi@example.com'),
(12, 'PT Global Komputer', 'Jl. Gatot Subroto No. 10', 'Bekasi', 'Jawa Barat', '17111', '02145678901', 'global.komputer@example.com'),
(13, 'UD Mandiri Teknologi', 'Jl. Asia Afrika No. 25', 'Tangerang', 'Banten', '15111', '02198765432', 'mandiri.teknologi@example.com'),
(14, 'PT Komputerindo', 'Jl. Pemuda No. 3', 'Depok', 'Jawa Barat', '16411', '02123456789', 'komputerindo@example.com'),
(15, 'CV Elektronik Sejahtera', 'Jl. Juanda No. 14', 'Bogor', 'Jawa Barat', '16111', '02516789012', 'elektronik.sejahtera@example.com'),
(16, 'PT Nusantara Tekno', 'Jl. Merak No. 9', 'Malang', 'Jawa Timur', '65111', '03415678901', 'nusantara.tekno@example.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cabang`
--
ALTER TABLE `cabang`
  ADD PRIMARY KEY (`id_cabang`);

--
-- Indexes for table `departemen`
--
ALTER TABLE `departemen`
  ADD PRIMARY KEY (`id_departemen`);

--
-- Indexes for table `item_pesanan`
--
ALTER TABLE `item_pesanan`
  ADD PRIMARY KEY (`id_item_pesanan`),
  ADD KEY `id_pesanan` (`id_pesanan`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `id_departemen` (`id_departemen`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id_pesanan`),
  ADD KEY `id_karyawan` (`id_karyawan`),
  ADD KEY `id_pelanggan` (`id_pelanggan`),
  ADD KEY `tanggal_pesanan` (`tanggal_pesanan`),
  ADD KEY `kode_invoice` (`kode_invoice`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD KEY `nama_produk` (`nama_produk`),
  ADD KEY `kategori` (`kategori`);

--
-- Indexes for table `produk_supplier`
--
ALTER TABLE `produk_supplier`
  ADD PRIMARY KEY (`id_produk`,`id_supplier`),
  ADD KEY `id_supplier` (`id_supplier`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departemen`
--
ALTER TABLE `departemen`
  MODIFY `id_departemen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `item_pesanan`
--
ALTER TABLE `item_pesanan`
  MODIFY `id_item_pesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id_karyawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id_pesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `item_pesanan`
--
ALTER TABLE `item_pesanan`
  ADD CONSTRAINT `item_pesanan_ibfk_1` FOREIGN KEY (`id_pesanan`) REFERENCES `pesanan` (`id_pesanan`),
  ADD CONSTRAINT `item_pesanan_ibfk_2` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`);

--
-- Constraints for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD CONSTRAINT `karyawan_ibfk_1` FOREIGN KEY (`id_departemen`) REFERENCES `departemen` (`id_departemen`);

--
-- Constraints for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `pesanan_ibfk_1` FOREIGN KEY (`id_karyawan`) REFERENCES `karyawan` (`id_karyawan`),
  ADD CONSTRAINT `pesanan_ibfk_2` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`);

--
-- Constraints for table `produk_supplier`
--
ALTER TABLE `produk_supplier`
  ADD CONSTRAINT `produk_supplier_ibfk_1` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`),
  ADD CONSTRAINT `produk_supplier_ibfk_2` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id_supplier`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
