import React from "react";
import styles from "./category.module.css";
import { Item } from "../item";

export function Category({ categoryName, items, add, sub, cart }) {
  return (
    <div className={styles.category}>
      <h2>{categoryName}</h2>
      <div className={styles.itemList}>
        {items.map((item, index) => (
          <Item
            // key={index}
            key={item.id}
            id={item.id}
            name={item.name}
            price={item.price}
            add={add}
            sub={sub}
            cart={cart}
            categoryName={categoryName}
          />
        ))}
      </div>
    </div>
  );
}
