<?php

class ModelExtensionPaymentGate2playApple extends Model
{

    public function getMethod($address, $total)
    {
        $this->load->language('payment/gate2play_apple');

        $method_data = array(
            'code'       => 'gate2play_apple',
            'terms'      => '',
            'title'      => $this->language->get('text_title'),
            'sort_order' => $this->config->get('gate2play_apple_sort_order')
        );

        return $method_data;
    }
}