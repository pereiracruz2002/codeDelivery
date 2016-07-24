<?php

namespace CodeDelivery\Models;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $fillable = [
        'user_id',
        'user_deliveryman_id',
        'total',
        'status'
    ];

    public function user()
    {
        return $this->belongTo(User::class);
    }

    public function items()
    {
        return $this->hasMany(OrderItem::class);
    }

      public function deliveryman()
    {
        return $this->belongTo(User::class);
    }
}
