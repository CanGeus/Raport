<?= $this->extend('templates/index'); ?>

<?= $this->section('main-content'); ?>
<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header py-3 text-center">
                <h6 class="m-0 font-weight-bold text-primary text-uppercase">nilai mapel <?= $nama_mapel; ?></h6>
            </div>
            <div class="card-body">
                <table class="table table-bordered text-uppercase">
                    <thead>
                        <tr>
                            <th scope="col">Nama</th>
                            <th class="text-center" scope="col">
                                <a href="<?= base_url(); ?>/guru/input_nilai/satu/<?= $nama_mapel; ?>">1</a>
                            </th>
                            <th class="text-center" scope="col">
                                <a href="<?= base_url(); ?>/guru/input_nilai/dua/<?= $nama_mapel; ?>">2</a>
                            </th>
                            <th class="text-center" scope="col">
                                <a href="<?= base_url(); ?>/guru/input_nilai/tiga/<?= $nama_mapel; ?>">3</a>
                            </th>
                            <th class="text-center" scope="col">
                                <a href="<?= base_url(); ?>/guru/input_nilai/empat/<?= $nama_mapel; ?>">4</a>
                            </th>
                            <th class="text-center" scope="col">
                                <a href="<?= base_url(); ?>/guru/input_nilai/lima/<?= $nama_mapel; ?>">5</a>
                            </th>
                            <th class="text-center" scope="col">
                                <a href="<?= base_url(); ?>/guru/input_nilai/enam/<?= $nama_mapel; ?>">6</a>
                            </th>
                            <th class="text-center" scope="col">
                                <a href="<?= base_url(); ?>/guru/input_nilai/uts/<?= $nama_mapel; ?>">uts</a>
                            </th>
                            <th class="text-center" scope="col">
                                <a href="<?= base_url(); ?>/guru/input_nilai/uas/<?= $nama_mapel; ?>">uas</a>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($nilai as $n) : ?>
                            <tr>
                                <th scope="row"><?= $n['nama']; ?></th>
                                <td class="text-center">
                                    <?= $n['satu']; ?>
                                </td>
                                <td class="text-center">
                                    <?= $n['dua']; ?>
                                </td>
                                <td class="text-center">
                                    <?= $n['tiga']; ?>
                                </td>
                                <td class="text-center">
                                    <?= $n['empat']; ?>
                                </td>
                                <td class="text-center">
                                    <?= $n['lima']; ?>
                                </td>
                                <td class="text-center">
                                    <?= $n['enam']; ?>
                                </td>
                                <td class="text-center">
                                    <?= $n['uts']; ?>
                                </td>
                                <td class="text-center">
                                    <?= $n['uas']; ?>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</div>
<!-- /.container-fluid -->
<?= $this->endSection(); ?>