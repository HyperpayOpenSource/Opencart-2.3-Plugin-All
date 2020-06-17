<?php

class ModelExtensionPaymentGate2playStc extends Model
{

    public function getMethod($address, $total)
    {
        $this->load->language('payment/gate2play_stc');

        $method_data = array(
            'code'       => 'gate2play_stc',
            'terms'      => '',
            'title'      => $this->language->get('text_title'),
            'sort_order' => $this->config->get('gate2play_stc_sort_order')
        );

        return $method_data;
    }
}
