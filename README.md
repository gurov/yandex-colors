# yandex-color

Yandex colors in a single array, which includes: HEX encoding, English and Russian color names.

The list of color you can see [here](https://gurov.github.io/yandex-colors/index.html).

# Install
```
npm install yandex-colors
```

# Using

## index.ts

```typescript
import {colors} from 'yandex-colors';
console.log(colors.slice(0, 3));
```

## terminal

```bash
$ npx ts-node index.ts
[ { hex: '000000', ru: 'Черный', en: 'Black' },
  { hex: '000080', ru: 'Темно-синий', en: 'Navy blue' },
  { hex: '0000ff', ru: 'Синий', en: 'Blue' } ]
```