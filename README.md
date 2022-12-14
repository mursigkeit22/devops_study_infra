# infrastructure



## Indexes



```
CREATE INDEX idx_order ON orders(id);
CREATE INDEX idx_product ON product(id);
CREATE INDEX idx_order_op ON order_product(order_id);
CREATE INDEX idx_product_op ON order_product(product_id);
```

