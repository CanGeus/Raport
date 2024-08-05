<div id="content-wrapper" class="d-flex flex-column">

    <!-- Main Content -->
    <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow ">

            <!-- Sidebar Toggle (Topbar) -->
            <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                <i class="fa fa-bars"></i>
            </button>



            <!-- Topbar Navbar -->
            <ul class="navbar-nav ml-auto">

                <div class="topbar-divider d-none d-sm-block"></div>

                <!-- Nav Item - User Information -->
                <li class="nav-item dropdown no-arrow">
                    <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <?php if (in_groups('admin')) : ?>
                            <span class="mr-2 d-none d-lg-inline text-gray-600 small">
                                <?= $login; ?>
                            </span>
                            <img class="img-profile rounded-circle" src="<?= base_url(); ?>/img/<?= user()->user_img; ?>">
                        <?php endif; ?>
                        <?php if (in_groups('user')) : ?>
                            <?php foreach ($login as $l) : ?>
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">
                                    <?= $l['nama']; ?>
                                </span>
                                <img class="img-profile rounded-circle" src="<?= base_url(); ?>/img/<?= $l['img']; ?>">
                            <?php endforeach; ?>
                        <?php endif; ?>
                        <?php if (in_groups('guru')) : ?>
                            <?php foreach ($login as $l) : ?>
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">
                                    <?= $l['nama']; ?>
                                </span>
                                <img class="img-profile rounded-circle" src="<?= base_url(); ?>/img/<?= user()->user_img; ?>">
                            <?php endforeach; ?>
                        <?php endif; ?>

                    </a>
                    <!-- Dropdown - User Information -->
                    <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                        <?php if (in_groups('admin')) : ?>
                            <a class="dropdown-item" href="<?= base_url(); ?>/admin/profile">
                            <?php endif; ?>
                            <?php if (in_groups('guru')) : ?>
                                <a class="dropdown-item" href="<?= base_url(); ?>/guru/profile">
                                <?php endif; ?>
                                <?php if (in_groups('user')) : ?>
                                    <a class="dropdown-item" href="<?= base_url(); ?>/user/profile">
                                    <?php endif; ?>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                        <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                        Logout
                                    </a>
                    </div>
                </li>

            </ul>

        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <?= $this->renderSection('main-content'); ?>
        <!-- /.container-fluid -->

    </div>
    <!-- End of Main Content -->

    <!-- Footer -->
    <footer class="sticky-footer bg-white">
        <div class="container my-auto">
            <div class="copyright text-center my-auto">
                <span>Copyright &copy; Tugas UAS PWEB2 <?= date('Y'); ?></span>
            </div>
        </div>
    </footer>
    <!-- End of Footer -->

</div>