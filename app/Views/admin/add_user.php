<?= $this->extend('templates/index'); ?>

<?= $this->section('main-content'); ?>
<!-- Begin Page Content -->
<div class="container-fluid">
    <div class="col-lg-12">
        <?php if (session()->has('message')) : ?>
            <div class="alert alert-success text-center text-uppercase">
                <?= session('message') ?>
            </div>
        <?php endif ?>
    </div>
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <h4>Tambah User</h4>
            </div>
            <div class="card-body">

                <div class="container">
                    <div class="row">
                        <div class="col-sm-6 offset-sm-3">

                            <div class="card">
                                <div class="card-body">

                                    <form action="<?= url_to('register') ?>" method="post">
                                        <?= csrf_field() ?>

                                        <div class="form-group">
                                            <label for="email"><?= lang('Auth.email') ?></label>
                                            <input type="email" class="form-control <?php if (session('errors.email')) : ?>is-invalid<?php endif ?>" name="email" aria-describedby="emailHelp" placeholder="<?= lang('Auth.email') ?>" value="<?= old('email') ?>">
                                            <small id="emailHelp" class="form-text text-muted"><?= lang('Auth.weNeverShare') ?></small>
                                        </div>

                                        <div class="form-group">
                                            <label for="username"><?= lang('Auth.username') ?></label>
                                            <input type="text" class="form-control <?php if (session('errors.username')) : ?>is-invalid<?php endif ?>" name="username" placeholder="<?= lang('Auth.username') ?>" value="<?= old('username') ?>">
                                        </div>

                                        <div class="form-group">
                                            <label for="password"><?= lang('Auth.password') ?></label>
                                            <input type="password" name="password" class="form-control <?php if (session('errors.password')) : ?>is-invalid<?php endif ?>" placeholder="<?= lang('Auth.password') ?>" autocomplete="off">
                                        </div>

                                        <div class="form-group">
                                            <label for="pass_confirm"><?= lang('Auth.repeatPassword') ?></label>
                                            <input type="password" name="pass_confirm" class="form-control <?php if (session('errors.pass_confirm')) : ?>is-invalid<?php endif ?>" placeholder="<?= lang('Auth.repeatPassword') ?>" autocomplete="off">
                                        </div>

                                        <br>

                                        <button type="submit" class="btn btn-primary btn-block">Tambah User</button>
                                    </form>


                                    <hr>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
<!-- /.container-fluid -->
<?= $this->endSection(); ?>