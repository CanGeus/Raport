<?= $this->extend('templates/index'); ?>

<?= $this->section('main-content'); ?>
<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- card nilai-->
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header py-3 text-center">
                <h6 class="m-0 font-weight-bold text-primary text-uppercase">nilai</h6>
            </div>
            <div class="card-body">
                <table class="table table-bordered text-uppercase">
                    <thead>
                        <tr>
                            <th scope="col">mapel</th>
                            <th class="text-center" scope="col">1</th>
                            <th class="text-center" scope="col">2</th>
                            <th class="text-center" scope="col">3</th>
                            <th class="text-center" scope="col">4</th>
                            <th class="text-center" scope="col">5</th>
                            <th class="text-center" scope="col">6</th>
                            <th class="text-center" scope="col">uts</th>
                            <th class="text-center" scope="col">uas</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($nilai as $n) : ?>
                            <tr>
                                <th scope="row"><?= $n['mapel']; ?></th>
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
<?= $this->endSection(); ?>