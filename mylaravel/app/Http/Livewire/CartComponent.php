<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Cart;
use Illuminate\Support\Facades\Auth;
use App\Http\User\CheckoutComponent;

class CartComponent extends Component
{
    public function increaseQuantity($rowId)
    {
        $product = Cart::instance('cart')->get($rowId);
        $qty = $product->qty + 1;
        Cart::instance('cart')->update($rowId, $qty);
    }

    public function decreaseQuantity($rowId)
    {
        $product = Cart::instance('cart')->get($rowId);
        $qty = $product->qty - 1;
        Cart::instance('cart')->update($rowId, $qty);
    }


    public function destroy($rowId)
    {
        Cart::instance('cart')->remove($rowId);
        session()->flash('success_massage','Item has been removed');

    }

    public function destroyAll()
    {
        Cart::instance('cart')->destroy();
    }

    public function switchToSaveForLater($rowId)
    {
        $item = Cart::instance('cart')->get($rowId);
        Cart::instance('cart')->remove($rowId);
        Cart::instance('SaveForLater')->add($item->id, $item->name,1,$item->price)->associate('App\Models\Product');
        $this->emitTo('cart-count-component','refreshComponent');
        session()->flash('success_message','Item has been saved for later');
    }

    public function moveToCart($rowId)
    {
        $item = Cart::instance('SaveForLater')->get($rowId);
        Cart::instance('SaveForLater')->remove($rowId);
        Cart::instance('cart')->add($item->id, $item->name,1,$item->price)->associate('App\Models\Product');
        $this->emitTo('cart-count-component','refreshComponent');
        session()->flash('s_success_message','Item has been moved to cart');
    }

    public function deleteFromSaveForLater($rowId)
    {
        Cart::instance('SaveForLater')->remove($rowId);
        session()->flash('s_success_message','Item has been removed from save for later');
    }

    public function checkout()
    {
        if(Auth::check())
        {
            return redirect()->route('checkout');
        }
        else
        {
            return redirect()->route('login');
        }
    }

    public function setAmountForCheckout()
    {
        if(!Cart::instance('cart')->count()>0)
        {
            session()->forget('checkout');
            return;
        }
        if(session()->has('coupon'))
        {
            session()->put('checkout',[
                'discount'=>$this->discount,
                'subtotal'=>$this->subtotalAfterDiscount,
                'tax'=>$this->taxAfterDiscount,
                'total'=>$this->totalAfterDiscount
            ]);
        }
        else
        {
            session()->put('checkout',[
                'discount'=>0,
                'subtotal'=> Cart::instance('cart')->subtotal(),
                'tax'=> Cart::instance('cart')->tax(),
                'total'=>Cart::instance('cart')->total()
            ]);
        }
    }

    public function render()
    {
        $this->setAmountForCheckout();
        return view('livewire.cart-component')->layout("layouts.base");
    }
}
