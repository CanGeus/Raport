<?= $this->extend('templates/index'); ?>

<?= $this->section('main-content'); ?>
<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="col-lg-12">
        <div class="table-responsive text-center">
            <table class="table">
                <thead>
                    <tr>
                        <th class="text-left">Name Mata Pelajaran</th>
                        <th>Cek nilai siswa</th>
                        <th class="text-right">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($mapel as $m) : ?>
                        <tr>
                            <td class="text-left"><?= $m['mapel']; ?></td>
                            <td class="td-actions">
                                <a href="<?= base_url(); ?>/guru/cek_nilai/<?= $m['mapel']; ?>">
                                    <button type="button" rel="tooltip" class="btn btn-success btn-just-icon btn-sm" data-original-title="" title="">
                                        <i class="fa-solid fa-magnifying-glass"></i>
                                    </button>
                                </a>
                            </td>
                            <td class="td-actions text-right">
                                <div class="dropdown d-inline">
                                    <button type="button" rel="tooltip" class="btn btn-success btn-just-icon btn-sm" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        harian <i class="fa-regular fa-pen-to-square"></i>
                                    </button>
                                    <div class="dropdown-menu" aria-labelledby="dropdownMenu2">
                                        <a href="<?= base_url(); ?>/guru/input_nilai/satu/<?= $m['mapel']; ?>">
                                            <button class="dropdown-item" type="button">Nilai harian 1</button>
                                        </a>
                                        <a href="<?= base_url(); ?>/guru/input_nilai/dua/<?= $m['mapel']; ?>">
                                            <button class="dropdown-item" type="button">Nilai harian 2</button>
                                        </a>
                                        <a href="<?= base_url(); ?>/guru/input_nilai/tiga/<?= $m['mapel']; ?>">
                                            <button class="dropdown-item" type="button">Nilai harian 3</button>
                                        </a>
                                        <a href="<?= base_url(); ?>/guru/input_nilai/empat/<?= $m['mapel']; ?>">
                                            <button class="dropdown-item" type="button">Nilai harian 4</button>
                                        </a>
                                        <a href="<?= base_url(); ?>/guru/input_nilai/lima/<?= $m['mapel']; ?>">
                                            <button class="dropdown-item" type="button">Nilai harian 5</button>
                                        </a>
                                        <a href="<?= base_url(); ?>/guru/input_nilai/enam/<?= $m['mapel']; ?>">
                                            <button class="dropdown-item" type="button">Nilai harian 6</button>
                                        </a>
                                    </div>
                                </div>
                                <div class="dropdown d-inline">
                                    <button type="button" rel="tooltip1" class="btn btn-primary btn-just-icon btn-sm" id="dropdownMenu" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        ujian <i class="fa-regular fa-pen-to-square"></i>
                                    </button>
                                    <div class="dropdown-menu" aria-labelledby="dropdownMenu">
                                        <a href="<?= base_url(); ?>/guru/input_nilai/uts/<?= $m['mapel']; ?>">
                                            <button class="dropdown-item" type="button">UTS</button>
                                        </a>
                                        <a href="<?= base_url(); ?>/guru/input_nilai/uas/<?= $m['mapel']; ?>">
                                            <button class="dropdown-item" type="button">UAS</button>
                                        </a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>

</div>
<!-- /.container-fluid -->
<?= $this->endSection(); ?>