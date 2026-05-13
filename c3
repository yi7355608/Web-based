# Chapter 3: CSS (Cascading Style Sheets) - Comprehensive Summary

## Chapter 3A: CSS Fundamentals (CSS 基础)

### 1. Three Ways of Adding CSS (三种添加方式)
* **Inline Style:** Added via the `style` attribute. Affects only a single element. No reusability. (通过 style 属性添加，仅影响单个元素，无复用性。)
* **Embedded Style:** Added via the `<style>` element in the `<head>`. Affects one page. (在 head 中使用 style 标签，影响单个页面。)
* **External Style:** Linked via an external `.css` file using `<link>`. Best reusability. (通过外部文件链接，复用性最高。)

### 2. CSS Selectors (CSS 选择器)
* **Basic Selectors:**
    * **Type/Element Selector:** Selects by tag name (e.g., `h1`). (元素选择器。)
    * **Class Selector:** Starts with `.` (e.g., `.blue`). Can be used multiple times. (类选择器。)
    * **ID Selector:** Starts with `#` (e.g., `#main`). Unique per page. (ID 选择器，全页唯一。)
* **Combinators:**
    * **Descendant Selector (`space`):** Selects all descendants. (后代选择器，选择所有子孙。)
    * **Child Selector (`>`):** Selects direct children only. (子元素选择器，仅限直接子级。)
    * **General Sibling (`~`) & Adjacent Sibling (`+`):** Selects siblings. (兄弟选择器。)
* **Pseudo-classes & Pseudo-elements:**
    * **`:hover`, `:active`, `:focus`:** User interaction states. (用户交互状态。)
    * **`::before`, `::after`:** Inserts content before or after an element. (在元素前后插入内容。)
* **Attribute Selector:** Selects based on attributes, e.g., `a[href^="https"]`. (根据属性值选择。)

### 3. CSS Cascade & Specificity (层叠性与权重)
* **Specificity Hierarchy:** ID (100) > Class/Pseudo-class (10) > Element (1). (权重顺序：ID > 类 > 元素。)
* **Inheritance:** Some properties (like `color`, `font-family`) are inherited from parents. (继承性：子元素会继承父元素的某些样式。)

---

## Chapter 3B: Advanced CSS Layouts & Styling (进阶布局与样式)

### 1. The `display` Property (显示属性)
* **block:** Takes full width; starts on a new line (e.g., `div`, `p`). (块级：占满一行。)
* **inline:** Takes only necessary width; stays side-by-side (e.g., `span`, `b`). (行内：并排显示。)
* **inline-block:** Inline flow but allows width/height setting. (行内块：并排显示但可设宽高。)
* **none:** Completely removes the element from the layout. (隐藏：元素不占据空间。)

### 2. Box Sizing & The Box Model (盒模型)
* **Standard Box Model:** `width` only includes content. Padding and border are added outside. (标准模型：宽度仅包含内容。)
* **`box-sizing: border-box;`:** `width` includes content, padding, and border. Highly recommended for layout. (推荐：宽度包含内边距和边框。)

### 3. Floating & Positioning (浮动与定位)
* **Float:** `left`, `right`, `none`. Used to wrap text around images or simple columns. (浮动：用于文字环绕或简单分栏。)
* **Position:**
    * **static:** Default position. (默认定位。)
    * **relative:** Relative to its normal position. (相对定位：相对于原位置偏移。)
    * **absolute:** Relative to the nearest positioned ancestor. (绝对定位：相对于最近的非 static 祖先。)
    * **fixed:** Relative to the browser window. (固定定位：相对于窗口，不随滚动移动。)
    * **sticky:** Toggles between relative and fixed based on scroll position. (粘性定位：滚动到特定位置时固定。)

### 4. Backgrounds & Others (背景与其他)
* **Background Image:** Attributes like `background-size: cover/contain`, `background-repeat`, and `background-attachment: fixed`. (背景图大小、重复及固定。)
* **Gradients:** `linear-gradient` (Linear) and `radial-gradient` (Circle). (线性渐变与径向渐变。)
* **Opacity:** Sets transparency (0 to 1). (透明度。)

---

## Chapter 3C: Modern Layouts & Animation (现代布局与动画)

### 1. Flexbox Layout (弹性布局)
* **Flex Container:** Set `display: flex`. (设置容器。)
* **Main Axis Alignment:** `justify-content` (e.g., `center`, `space-between`). (主轴对齐。)
* **Cross Axis Alignment:** `align-items` (e.g., `center`, `stretch`). (交叉轴对齐。)
* **Direction:** `flex-direction: row` or `column`. (排列方向。)

### 2. CSS Grid Layout (网格布局)
* **Definition:** `display: grid`. Defines columns (`grid-template-columns`) and rows. (定义网格列和行。)
* **Fractional Unit (`fr`):** Flexible length representing a portion of space. (等分单位。)
* **Gap:** `grid-gap` to set spacing between cells. (网格间距。)

### 3. Transitions (过渡)
* **Property:** `transition: [property] [duration] [timing-function] [delay]`. (过渡：平滑改变属性值。)
* **Example:** Changing `background-color` on `:hover`. (例如鼠标悬停时的背景平滑变色。)

### 4. CSS Animations (动画)
* **`@keyframes`:** Defines the animation steps (from/to or 0%/100%). (定义动画序列。)
* **Properties:**
    * **`animation-name` / `animation-duration`:** Link keyframes and set time. (动画名称与时长。)
    * **`animation-iteration-count`:** Set to `infinite` or a number. (循环次数。)
    * **`animation-fill-mode`:** `forwards` (stay at last frame) or `backwards`. (填充模式：是否保留最后一帧。)
    * **`animation-play-state`:** `running` or `paused`. (动画运行状态。)
