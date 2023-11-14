#include<iostream>
#include<string.h>
using namespace std;
class discount;
class item
{
	public:
	int id;
	char iname[20];
	int pri;
};
class discount:public item
{
	public:
		float dis;
		float dis_pri;
		void accept()
	{
		cout<<"ENTER ITEM ID"<<endl; 
		cin>>id;
		cout<<"ENTER ITEM NAME"<<endl; 
		cin>>iname;
		cout<<"ENTER ITEM PRICE"<<endl;
		cin>>pri;
		cout<<"ENTER DISCOUNT PERCENTAGE"<<endl;
		cin>>dis;
		cout<<"----------------------------"<<endl;
		dis_pri= pri - (dis/100 * pri);
	}
	void display()
	{
		cout<<"ITEM ID::"<<id<<endl;
		cout<<"ITEM NAME::"<<iname<<endl;
		cout<<"ITEM PRICE::"<<pri<<endl;
		cout<<"ITEM DISCOUNT::"<<dis<<endl;
		cout<<"DISCOUNTED PRICE::"<<dis_pri<<endl;
		cout<<"----------------------------"<<endl;
	}
};
int main()
{
	int n,i;
	float total_price=0;
	float total_discount=0;
	float actual_price=0;
	cout<<"ENTER THE NO OF DETAILS"<<endl;
	cin>>n;
	discount obj[n];
	for(i=0;i<n;i++)
	{
		obj[i].accept();
	}
	for(i=0;i<n;i++)
	{
		obj[i].display();
	}
	for(i=0;i<n;i++)
	{
		total_price=total_price + obj[i].pri;
		actual_price= actual_price+obj[i].dis_pri;
	}
	for(i=0;i<n;i++)
	{
		total_discount=total_discount+obj[i].pri-obj[i].dis_pri;
	}
	cout<<"THE TOTAL PRICE IS:::"<<total_price<<endl;
	cout<<"THE TOTAL DISCOUNT IS:::"<<total_discount<<endl;
	cout<<"THE TOTAL BILL VALUE IS:::"<<actual_price<<endl;
}