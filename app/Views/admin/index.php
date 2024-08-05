<?= $this->extend('templates/index'); ?>

<?= $this->section('main-content'); ?>
<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page count -->
    <div class="row">

        <!-- Earnings (Monthly) Card Example -->
        <div class="col-xl-4 col-md-6 mb-4">
            <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-; font-weight-bold text-primary text-uppercase mb-1">
                                Jumlah Siswa
                            </div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                <?php echo $C_siswa; ?> Siswa
                            </div>
                        </div>
                        <div class="col-auto">
                            <i class="fa-solid fa-users fa-4x text-gray-200"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Earnings (Monthly) Card Example -->
        <div class="col-xl-4 col-md-6 mb-4">
            <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-; font-weight-bold text-success text-uppercase mb-1">
                                jumlah guru
                            </div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                <?= $C_guru; ?> Guru
                            </div>
                        </div>
                        <div class="col-auto">
                            <i class="fa-solid fa-chalkboard-user  fa-4x text-gray-200"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Pending Requests Card Example -->
        <div class="col-xl-4 col-md-6 mb-4">
            <div class="card border-left-warning shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-; font-weight-bold text-warning text-uppercase mb-1">
                                Jumlah Kelas
                            </div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                <?= $C_kelas; ?> Kelas
                            </div>
                        </div>
                        <div class="col-auto">
                            <i class="fa-solid fa-house-user fa-4x text-gray-200"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- message -->
    <div class="row mb-4">
        <div class="col-lg-12">
            <div class="card border-left-dark shadow h-100 py-2">
                <marquee style="font-size: larger;" behavior="" direction="left">Selamat datang, <?= $login; ?> di Aplikas E-Rapot </marquee>
            </div>
        </div>
    </div>

    <!-- informasi sekolah -->
    <div class="row">
        <div class="col-lg-7">
            <div class="card mb-3">
                <div class="card-header py-3 text-center">
                    <h6 class="m-0 font-weight-bold text-primary text-uppercase">informasi sekolah</h6>
                </div>
                <div class="card-body">
                    <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img height="270" src="<?= base_url(); ?>/img/carousel/1.jpg" class="d-block w-100">
                                <div class="carousel-caption d-none d-md-block">
                                    <h5 class="text-uppercase">penampilan kesenian siswa</h5>
                                    <p>siswa melakukan seni keterampilan</p>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img height="270" src="<?= base_url(); ?>/img/carousel/2.jpg" class="d-block w-100">
                                <div class="carousel-caption d-none d-md-block">
                                    <h5 class="text-uppercase">penampilan kesenian siswa</h5>
                                    <p>siswa melakukan seni keterampilan</p>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img height="270" src="<?= base_url(); ?>/img/carousel/3.jpg" class="d-block w-100">
                                <div class="carousel-caption d-none d-md-block">
                                    <h5 class="text-uppercase">Kegiatan keagaam</h5>
                                    <p>siswa sedang melakukan shalat berjamaah</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-header py-3 text-center">
                    <h6 class="m-0 font-weight-bold text-primary text-uppercase">struktur organisasi sekolah</h6>
                </div>
                <div class="card-body">
                    <img class="col-lg-12" src="<?= base_url(); ?>/img/bagan.png" alt="organisasi sekolah">
                </div>
            </div>
        </div>
        <div class="col-lg-5">
            <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary text-uppercase">Daftar Pengajar</h6>
                </div>
                <!-- Card Body -->
                <div class="card-body">
                    <div class="">
                        <table class="table" style="font-size: small;">
                            <thead>
                                <tr>
                                    <th scope="col">NIP</th>
                                    <th scope="col">Nama Lengkap</th>
                                </tr>
                            </thead>
                            <?php
                            foreach ($guru as $list) : ?>
                                <tr>
                                    <td><?= $list['nip']; ?></td>
                                    <td><?= $list['nama']; ?></td>
                                </tr>
                            <?php endforeach; ?>
                            </tbody>
                        </table>
                        <hr>
                    </div>

                </div>
            </div>
        </div>

    </div>
    <!-- /.container-fluid -->
    <?= $this->endSection(); ?>