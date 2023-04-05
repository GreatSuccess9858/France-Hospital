<?php

namespace App\Events;

//use Illuminate\Broadcasting\Channel;
use App\Models\Order;
use Illuminate\Broadcasting\InteractsWithSockets;
//use Illuminate\Broadcasting\PresenceChannel;
use Illuminate\Broadcasting\PrivateChannel;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Queue\SerializesModels;

class ChatDoctor implements ShouldBroadcast
{
    use Dispatchable, InteractsWithSockets, SerializesModels;

    public $payload = 'unknown';

    /**
     * Create a new event instance.
     *
     * @return void
     */
    public $order;
    public function __construct(Order $order)
    {
        //
        $this->order = $order;
        $this->payload = $order->customer_name;
    }

    /**
     * Get the channels the event should broadcast on.
     *
     * @return \Illuminate\Broadcasting\Channel|array
     */
    public function broadcastOn()
    {
        return new PrivateChannel('App.Models.User.'.$this->order->user_id);
    }

    /**
     * Get the event's name to broadcast as.
     */
    public function broadcastAs()
    {
        return 'new-message-event';
    }
}
