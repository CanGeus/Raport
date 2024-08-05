<?= $this->extend('templates/index'); ?>

<?= $this->section('main-content'); ?>
<!-- Begin Page Content -->
<div class="container-fluid text-center">
    <?php
    if (session()->getFlashData('massage')) {
    ?>
        <div class="alert alert-success alert-dismissible fade show text-center text-uppercase" role="alert">
            <?= session()->getFlashData('massage') ?>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
    <?php
    }
    ?>

    <?php foreach ($login as $u) : ?>
        <div class="card">
            <div class="card-header">
                <h4>Detail User <?= $u['nama']; ?></h4>
            </div>
            <div class="card-body">
                <div class="container rounded bg-white mb-5">
                    <div class="row">
                        <div class="col-md-4 border-right">
                            <div class="d-flex flex-column align-items-center text-center">
                                <img style="border-radius: 10px;" width="200" src="<?= base_url(); ?>/img/<?= $u['img']; ?>" alt="foto profilr">
                                <span class="font-weight-bold mt-3"><?= $u['nama']; ?></span>
                                <span class="text-black-10"><?= $u['email']; ?></span>
                                <span> </span>
                            </div>
                        </div>
                        <div class="col-md-8  text-left">
                            <form action="<?= base_url(); ?>/updateprofile/update/<?= $u['nisn']; ?>/<?= $u['role']; ?>" method="post" enctype="multipart/form-data">
                                <?= csrf_field(); ?>
                                <div class="p-3">
                                    <div class="justify-content-between align-items-center mb-3 col-12 text-center">
                                        <h4>Profile</h4>
                                    </div>
                                    <div class="row mb-4 text-capitalize">
                                        <div class="col-md-12 mb-3">
                                            <label class="labels">Name Lenkap</label>
                                            <input name="nama" type="text" class="form-control" placeholder="Mohon isi Dengan nama lengkap" value="<?= $u['nama']; ?>">
                                        </div>
                                        <div class="col-md-12 mb-3">
                                            <label class="labels">Agama</label>
                                            <input name="agama" type="text" class="form-control" placeholder="Mohon isi Dengan Agama yang di anut" value="<?= $u['agama']; ?>">
                                        </div>
                                        <div class="col-md-12 mb-3 d-flex p-0">
                                            <div class="col-6 d-inline">
                                                <label class="labels">Tempat</label>
                                                <input name="tempat_lahir" type="text" class="form-control" placeholder="isi Dengan tempat lahir" value="<?= $u['tempat_lahir']; ?>">
                                            </div>
                                            <div class="col-6 d-inline">
                                                <label class="labels">Tanggal Lahir</label>
                                                <input name="tanggal_lahir" type="text" class="form-control" placeholder="isi Dengan tanggal lahir" value="<?= $u['tanggal_lahir']; ?>">
                                            </div>
                                        </div>
                                        <div class="col-md-12 mb-3 d-flex p-0">
                                            <div class="col-6 d-inline">
                                                <label class="labels">No Telephone</label>
                                                <input name="no_tlp" type="text" class="form-control" placeholder="isi Dengan tempat lahir" value="<?= $u['no_tlp']; ?>">
                                            </div>
                                            <div class="col-6 d-inline">
                                                <label for="">Upload Foto</label>
                                                <div class="custom-file">
                                                    <input type="file" class="custom-file-input <?= ($validation->hasError('img')) ? 'is-invalid' : '' ?>" id="inputGroupFile01" name="img" aria-describedby="inputGroupFileAddon01">
                                                    <div class="invalid-feedback"><?= $validation->getError('img'); ?></div>
                                                    <label class="custom-file-label" for="inputGroupFile01">Pilih gambar</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12 mb-3">
                                            <label class="labels">Alamat</label>
                                            <input name="alamat" type="text" class="form-control" placeholder="Isi dengan alamat lengkap" value="<?= $u['alamat']; ?>">
                                        </div>
                                    </div>

                                    <p class="text-danger"><span class="align-middle">*</span> untuk update data semua fild wajib di sisi !! </p>

                                    <div class="mt-5 text-center">
                                        <button class="btn btn-primary profile-button" type="submit" onclick="return confirm('apakah anda yakin untuk menghapus user <?= $u['nama']; ?> ?')">
                                            Save Profile
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</div>
</div>
<?php endforeach; ?>

</div>
<!-- /.container-fluid -->
<?= $this->endSection(); ?>