import 'list.dart';

List<money> geter() {
  money upwork = money();
  upwork.name = 'upwork';
  upwork.fee = '650';
  upwork.time = 'today';
  upwork.image = "icloud.png";
  upwork.buy = false;
  money starbucks = money();
  starbucks.buy = true;
  starbucks.fee = '15';
  starbucks.image = "entertainment.png";
  starbucks.name = 'starbucks';
  starbucks.time = 'today';
  money transfer = money();
  transfer.buy = true;
  transfer.fee = '100';
  transfer.image = "auto_&_transport.png";
  transfer.name = 'trasfer for sam';
  transfer.time = 'jan 30,2022';
  return [upwork, starbucks, transfer, upwork, starbucks, transfer];
}