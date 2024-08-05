<?= $this->extend('templates/index'); ?>

<?= $this->section('main-content'); ?>
<!-- Begin Page Content -->
<div class="container-fluid">

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
                            <th class="text-center" scope="col"><?= $id; ?></th>
                            <th class="text-center" scope="col">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        if (session()->getFlashData('success')) {
                        ?>
                            <div class="alert alert-success alert-dismissible fade show" role="alert">
                                <?= session()->getFlashData('success') ?>
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                        <?php
                        }
                        ?>
                        <?php foreach ($nilai as $n) : ?>
                            <form action="<?= base_url(); ?>/guru/input_to_nilai/<?= $n['id']; ?>/<?= $id; ?>" method="post">
                                <?= csrf_field() ?>
                                <tr>
                                    <th scope="row"><?= $n['nama']; ?></th>
                                    <td class="text-center">
                                        <input class="text-center" type="text" name="nilai" placeholder="Nilai Kosong" value="<?= $n[$id]; ?>">
                                    </td>
                                    <td class="text-center">
                                        <button type="submit" class="btn btn-success btn-sm text-uppercase">
                                            input <i class="fa-regular fa-pen-to-square"></i>
                                        </button>
                                    </td>
                                </tr>
                            </form>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</div>
<!-- /.container-fluid -->
<?= $this->endSection(); ?>