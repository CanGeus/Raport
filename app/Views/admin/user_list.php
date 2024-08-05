<?= $this->extend('templates/index'); ?>

<?= $this->section('main-content'); ?>
<!-- Begin Page Content -->
<div class="container-fluid">
    <?php
    if (session()->getFlashData('berhasil')) {
    ?>
        <div class="alert alert-danger alert-dismissible fade show text-center text-uppercase" role="alert">
            <?= session()->getFlashData('berhasil') ?>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
    <?php
    }
    ?>

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


    <!-- Page Heading -->
    <div class="card">
        <div class="card-header">
            <div class="row justify-content-center">
                <div class="col-md-6 text-center">
                    <h2 class="heading-section">Users List</h2>
                </div>
            </div>
        </div>
        <div class="card-body">
            <section class="ftco-section">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-wrap">
                                <table class="table table-responsive-xl">
                                    <thead>
                                        <tr>
                                            <th>Email</th>
                                            <th>Username</th>
                                            <th>Kelas</th>
                                            <th>Role</th>
                                            <th class="text-center">Action</th>
                                            <!-- <th>&nbsp;</th> -->
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php foreach ($users as $u) : ?>
                                            <tr class="alert" role="alert">
                                                <td class="d-flex align-items-center">
                                                    <?= $u->email; ?>
                                                </td>

                                                <td>
                                                    <?= $u->username; ?>
                                                </td>
                                                <td>
                                                    <?= $u->kelas; ?>
                                                </td>
                                                <td class="status"><span class="active"><?= $u->name; ?></span></td>
                                                <td class="text-center">
                                                    <a href="<?= base_url(); ?>/admin/detail/<?= $u->username;  ?>/<?= $u->id; ?>">
                                                        <?php if ($u->name == 'admin') { ?>
                                                            <!-- <button style="display: none;" class="btn btn-success btn-sm">Detail</button> -->
                                                        <?php } else { ?>
                                                            <button class="btn btn-success btn-sm">Detail</button>
                                                        <?php } ?>
                                                    </a>
                                                    <button type="button" rel="tooltip" class="btn btn-info btn-just-icon btn-sm" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                        Role
                                                    </button>
                                                    <div class="dropdown-menu" aria-labelledby="dropdownMenu1">
                                                        <a href="<?= base_url(); ?>/admin/role/1/<?= $u->user_id; ?>/<?= $u->role_id; ?>">
                                                            <button class="dropdown-item" type="button">Admin</button>
                                                        </a>
                                                        <a href="<?= base_url(); ?>/admin/role/2/<?= $u->user_id; ?>/<?= $u->role_id; ?>">
                                                            <button class="dropdown-item" type="button">Guru</button>
                                                        </a>
                                                        <a href="<?= base_url(); ?>/admin/role/3/<?= $u->user_id; ?>/<?= $u->role_id; ?>">
                                                            <button class="dropdown-item" type="button">Siswa</button>
                                                        </a>
                                                    </div>
                                                    <?php if ($u->name == 'admin') { ?>
                                                    <?php } else { ?>
                                                        <div class="d-inline">
                                                            <button type="button" rel="tooltip" class="btn btn-warning btn-just-icon btn-sm" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                Kelas
                                                            </button>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenu2">
                                                                <?php for ($i = 1; $i <= 6; $i++) : ?>
                                                                    <a href="<?= base_url(); ?>/admin/setKelas/<?= $u->user_id; ?>/<?= $i; ?>">
                                                                        <button class="dropdown-item" type="button">kelas <?= $i; ?></button>
                                                                    </a>
                                                                <?php endfor; ?>
                                                            </div>
                                                        </div>
                                                    <?php } ?>

                                                    <form class="d-inline" action="<?= base_url(); ?>/admin/hapus/<?= $u->user_id; ?>" method="post">
                                                        <?= csrf_field(); ?>
                                                        <input type="hidden" name="_method" value="DELETE">
                                                        <button onclick="return confirm('apakah anda yakin untuk menghapus user <?= $u->username; ?> ?')" class="btn btn-danger btn-sm">Delete</button>
                                                    </form>
                                                </td>
                                            </tr>
                                        <?php endforeach; ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>

</div>



<script>
    function hapus($username) {
        var result = confirm('Apakah yakin Melakukan proses Delete');
        if (result) {
            window.location = "<?= base_url(); ?>/admin/hapus/" + $username;
        }
    }
</script>
<!-- /.container-fluid -->
<?= $this->endSection(); ?>