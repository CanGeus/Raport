<?= $this->extend('templates/index'); ?>

<?= $this->section('main-content'); ?>
<!-- Begin Page Content -->
<div class="container-fluid">

    <div class="row">

        <div class="col-xl-7 col-lg-7">

            <!-- Area Chart -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary text-uppercase">wali kelas</h6>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-3">
                            <img style="border-radius: 7px;" width="125" src="<?= base_url(); ?>/img/guru.jpg" alt="">
                        </div>
                        <div class="col-sm-9">
                            <div class="card">
                                <div class="card-body">
                                    <?php foreach ($guru as $g) : ?>
                                        <h5 class="card-title text-capitalize">
                                            <?= $g['nama']; ?>
                                        </h5>
                                        <p class="card-text">
                                            <?= $g['alamat']; ?>
                                        </p>
                                        <p class="card-text"><?= $g['no_tlp']; ?></p>
                                    <?php endforeach; ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Bar Chart -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary text-uppercase">ketua kelas</h6>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-3">
                            <img style="border-radius: 7px;" width="125" src="<?= base_url(); ?>/img/siswa.jpg" alt="">
                        </div>
                        <div class="col-sm-9">
                            <div class="card">
                                <div class="card-body">
                                    <?php foreach ($ketua as $k) : ?>
                                        <h5 class="card-title text-capitalize">
                                            <?= $k['nama']; ?>
                                        </h5>
                                        <p class="card-text">
                                            <?= $k['alamat']; ?>
                                        </p>
                                        <p class="card-text"><?= $k['no_tlp']; ?></p>
                                    <?php endforeach; ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <!-- Donut Chart -->
        <div class="col-xl-5 col-lg-5">
            <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary text-uppercase">data siswa kelas <?= user()->kelas; ?></h6>
                </div>
                <!-- Card Body -->
                <div class="card-body">
                    <div class="">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">NISN</th>
                                    <th scope="col">Nama Lengkap</th>
                                </tr>
                            </thead>
                            <?php
                            foreach ($list_siswa as $list) : ?>
                                <tr>
                                    <td><?= $list['nisn']; ?></td>
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

</div>
<!-- /.container-fluid -->
<?= $this->endSection(); ?>