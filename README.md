# SendNotificationForSystemDemo
Send notification for systerm, not user. 

For exemple, send notification when app enter into backfround.


系统内部进行消息传递实现模式：观察者模式

Cocoa 使用两种方式实现了观察者模式：1、Key-Value Observing(KVO); 2、Notification.

Notification
1、使用系统通知，注册系统和响应
2、自定义通知，可以自定义通知，传递自定义的数据

注意：demo中，通知发送后的执行是同步的，即观察者全部处理完毕后，主线程菜继续执行.