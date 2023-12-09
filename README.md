# react-native-svga-play

react native 使用 svga 动画,兼容android、ios

## 安装

```
yarn add react-native-svga-play
```



**Android:**

```
react-native link react-native-svga-play
```
**Or**

auto link


**iOS:**

```
cd ios
run pod install
```

## 使用

```tsx
import { SVGAView } from "react-native-svga-play";

<SVGAView source={src} />

```
![img](./daka.gif)

## Api
### Props
|属性|是否必须|类型| 说明|  
|:----:|:----:|:----:|:----:|
| source  | 是 | `string` | 动画资源
| loops  | 否 |`boolean` | 动画循环次数，0无限循环，默认0
| clearsAfterStop  | 否 |`boolean` | 动画播放完是否清空画布
| currentState  | 否 |`"start"｜"pause"｜"stop"｜"clear"` | 当前状态
| toFrame  | 否 |`number` | 控制当前动画停靠在某帧，如果 currentState 值为 ‘play’，则跳到该帧后继续播放动画
| toPercentage  | 否 |`number` | 控制当前动画停靠在某进度，如果 currentState 值为 ‘play’，则跳到该帧后继续播放动画
| onFinished  | 否 |`Function` | 动画播放完的回调
| onFrame  | 否 |`Function` | 动画播放至某帧时，回调
| onPercentage  | 否 |`Function` | 动画播放至某进度时，回调
| onLoadingEnd  | 否 |`Function` | 动画加载完时，回调

### Ref
**load(url:string)加载资源**  

**startAnimation()开始动画**

**pauseAnimation()暂停动画**

**stopAnimation()停止动画**

**clearAnimation()清空动画**

**stepToFrame(toFrame: number, andPlay: boolean)渲染特定的帧，如果andPlay设置为true，则从该帧开始播放**

**stepToPercentage(toPercentage: number, andPlay: boolean)渲染特定百分比的帧，如果将percentage值设置为andPlaytrue，则该值应从0.0to到1.0该帧播放**

