import { defineConfig } from 'vite';
import laravel from 'laravel-vite-plugin';
import tailwindcss from '@tailwindcss/vite';

export default defineConfig({
    plugins: [
        laravel({
            input: [
                'resources/css/main.css',
                'resources/css/bayar_kasir.css',
                'resources/css/checkout.css',
                'resources/css/dashboard.css',
                'resources/css/detail_pesanan_qris.css',
                'resources/css/detail_pesanan.css',
                'resources/css/edit_pengeluaran.css',
                'resources/css/edit.css',
                'resources/css/kelola_pesanan_admin.css',
                'resources/css/laporan.css',
                'resources/css/login.css',
                'resources/css/lunas_order.css',
                'resources/css/order_sukses.css',
                'resources/css/order_user.css',
                'resources/css/orderstatus.css',
                'resources/css/payment.css',
                'resources/css/pengeluaran.css',
                'resources/css/tambah_menu.css',
                'resources/css/tambah_pengeluaran.css',
                'resources/css/upload.css',
                'resources/js/app.js',
            ],
            refresh: true,
        }),
        tailwindcss(),
    ],
    server: {
        watch: {
            ignored: ['**/storage/framework/views/**'],
        },
    },
});