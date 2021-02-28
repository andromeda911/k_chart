import '../entity/k_entity.dart';

class KLineEntity extends KEntity {
  double open;
  double high;
  double low;
  double close;
  double vol;
  double amount;
  double change;
  double ratio;
  int time;

  KLineEntity.fromCustom({
    this.amount,
    this.open,
    this.close,
    this.change,
    this.ratio,
    this.time,
    this.high,
    this.low,
    this.vol,
  });

  KLineEntity.fromJson(List data) {
    open = double.parse(data[1]);
    high = double.parse(data[2]);
    low = double.parse(data[3]);
    close = double.parse(data[4]);
    vol = double.parse(data[5]);
    amount = double.parse(data[7]);
    time = data[6] + 1;

    ratio = null;
    change = null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['time'] = this.time;
    data['open'] = this.open;
    data['close'] = this.close;
    data['high'] = this.high;
    data['low'] = this.low;
    data['vol'] = this.vol;
    data['amount'] = this.amount;
    data['ratio'] = this.ratio;
    data['change'] = this.change;
    return data;
  }

  @override
  String toString() {
    return 'MarketModel{'
        'open: $open, '
        'high: $high, '
        'low: $low, '
        'close: $close, '
        'vol: $vol, '
        'time: $time, '
        'amount: $amount, '
        'ratio: $ratio, '
        'change: $change'
        '}';
  }

  @override
  bool operator ==(o) => o is KLineEntity && o.time == time;

  int get hashCode => time.hashCode;
}
