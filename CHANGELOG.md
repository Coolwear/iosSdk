# 更新记录

本文档记录 CoolWear iOS SDK、Demo 以及配套文档的重要修改。

## 2026-10-24

### 文档

- 明确 `clearFlag` 必须设置为 `1`。
- 计数器清除流程：清除命令成功后，设备会自动上报 `DATA_TYPE_COUNTER`，无需再次发送读取命令。
- 明确应监听 `CEProductK6ReceiveDataNoticeKey` 中的 `DATA_TYPE_COUNTER` 上报，以确认清除结果。
- 更新中文、英文文档的计数器章节、命令表和 DataType 枚举表。
- 中文 SDK 文档增加计数器数据结构、读取方法、清除方法和回包处理示例。
- 英文 SDK 文档增加对应的 Counter 说明和 Objective-C 示例。
- 中英文命令表增加 `CE_RequestCounterInfoCmd` 和 `CE_SyncClearCounterCmd`。
- 中英文 DataType 枚举表增加 `DATA_TYPE_COUNTER (163 / 0xA3)`。


### Demo

- 增加“计数器”功能，用于读取设备当前计数值。
- 增加“清除计数器”功能，用于清除设备计数值。
- 增加计数器数据显示，读取结果来自 `Data.counterNum`。

### SDK 接口

- 读取计数器：`CE_RequestCounterInfoCmd`。
- 清除计数器：`CE_SyncClearCounterCmd`，`clearFlag` 固定传 `1`。
- 数据类型：`DATA_TYPE_COUNTER`，十进制值为 `163`，十六进制值为 `0xA3`。
- 计数器回包通过 `CEProductK6ReceiveDataNoticeKey` 通知返回，回包类型为 `DATA_TYPE_COUNTER`。

### 文档


