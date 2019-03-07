const log = (names, ...args) => console.log(names, args)
// inspired by https://mxstbr.blog/2016/11/styled-components-magic-explained/
const toCss = (names, ...args) => {
  const obj = names.reduce((acc, curr, i) => {
    const prop = curr.replace(':', '').trim()
    if (prop) {
      acc[prop] = args[i]
      return acc
    }
    return acc
  }, {})
  return obj
}

const result = toCss`font-size: ${'1em'} background: ${'red'}`
console.log(result)
