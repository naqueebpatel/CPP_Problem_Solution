#include<iostream>
#include<conio.h>
using namespace std;
class conversion
{
	public:
	virtual void read()=0;
	virtual void convert()=0;
	virtual void display()=0;
};
class weight: public conversion
{
	int g;
	float kg;
	public:
		void read()
		{
			cout<<"ENTER VALUE IN KILOGRAM TO CONVERT TO GRAM"<<endl;
			cin>>kg;
		}
		void convert()
		{
			g=kg*1000;
		}
		void display()
		{
			cout<<"KILOGRAM IS:::"<<kg<<endl;
			cout<<"GRAM IS:::"<<g<<endl;
		}
};
class volume:public conversion
{
	int ml;
	float l;
	public:
		void read()
		{
			cout<<"ENTER VALUE IN LITER TO CONVERT TO MILLILITER"<<endl;
			cin>>l;
		}
		void convert()
		{
			ml=l*1000;
		}
		void display()
		{
			cout<<"LITRE IS:::"<<l<<endl;
			cout<<"MILLILITER IS:::"<<ml<<endl;
		}
};
class currency:public conversion
{
	int p;
	float r;
	public:
		void read()
		{
			cout<<"ENTER THE VALUE IN RUPEE TO CONVERT TO PAISE"<<endl;
			cin>>r;
		}
		void convert()
		{
			p=r*100;
		}
		void display()
		{
			cout<<"RUPEE IS:::"<<r<<endl;
			cout<<"PAISE IS:::"<<p<<endl;
		}
};
int main()
{
	weight w;
	volume v;
	currency c;
	int num;
	do
	{
	cout<<"******SELECT THE CONVERSION*******"<<endl;
	cout<<"1.TO CONVERT FROM KG TO GRAM"<<endl;
	cout<<"2.TO CONVERT FROM LITER TO MILLILITER"<<endl;
	cout<<"3.TO CONVERT FROM RUPEE TO PAISE"<<endl;
	cout<<"4.EXIT."<<endl;
	cin>>num;
	switch(num)
	{
		case 1:
			w.read();
			w.convert();
			w.display();
			break;
		case 2:
			v.read();
			v.convert();
			v.display();
			break;
		case 3:
			c.read();
			c.convert();
			c.display();
			break;
		default:
			cout<<"!!!WRONG INPUT!!!";
	}
	}while(num!=4);
}