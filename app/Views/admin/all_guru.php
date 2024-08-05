<?= $this->extend('templates/index'); ?>

<?= $this->section('main-content'); ?>
<!-- Begin Page Content -->

<style>
    .card {
        max-width: 230px;
        border-radius: 13px;
        overflow: hidden;
    }
</style>
<div class="container-fluid">
    <div class="row">
        <div class="col-12">
            <?php foreach ($guru as $g) : ?>
                <a href="<?= base_url(); ?>/admin/detail/<?= $g['nip'];  ?>/<?= $g['role']; ?>">
                    <div class="card col-3 p-0 float-left m-3">
                        <div style="background-color: #ff0000;width:100%;height: 100px;">
                        </div>
                        <!-- <img src="https://www.bootdey.com/image/340x120/FFB6C1/000000" alt="Cover" class="card-img-top"> -->
                        <div class="card-body text-center" style="min-height: 200px;">
                            <img src="<?= base_url(); ?>/img/<?= $g['img']; ?>" style="width:100px;height: 100px;margin-top:-65px" alt="User" class="img-fluid img-thumbnail rounded-circle border-0 mb-3">
                            <h5 class="card-title" style="min-height: 100px;"><?= $g['nama']; ?></h5>
                            <p class="text-secondary mb-1"><?= $g['role']; ?></p>
                        </div>
                    </div>
                </a>
            <?php endforeach; ?>
        </div>
    </div>
</div>
<!-- /.container-fluid -->
<?= $this->endSection(); ?>