<?php

namespace App\Jobs;

use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Queue\Queueable;

class SendReminderNotification implements ShouldQueue
{
    use Queueable;

    /**
     * Create a new job instance.
     */
    public function __construct()
    {
        //
    }

    /**
     * Execute the job.
     */
    public function handle()
{
    $jadwals = Jadwal::where('date', '=', now()->toDateString())->get();

    foreach ($jadwals as $jadwal) {
        // Kirim notifikasi sesuai jadwal
        Notification::send($jadwal->user, new ReminderNotification($jadwal));
    }
}
protected function schedule(Schedule $schedule)
{
    $schedule->job(new SendReminderNotification)->daily();
}

}
