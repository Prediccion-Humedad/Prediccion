from argparse import ArgumentParser
# from Preprocessing import Upload_Data
from Preprocessing import Upload_Data

def main()-> int:
    parser=ArgumentParser(description='Terminal utility to processing raw data.')
    parser.add_argument('--Receive',type=str,required=True,help='Route and Name of raw DataBase')
    parser.add_argument('--Posting',type=str,required=True,help='Route and Name of Processing DataBase')
    args=parser.parse_args()
    file_in=args.Receive
    file_out=args.Posting
    carga=Upload_Data(file_in,file_out)
    Data_trans=carga.Transform()
    print(Data_trans.iloc[0,0])
    filter_=carga.filter_(Data_trans)
    print(filter_.iloc[0,0])
    return 0

if __name__=='__main__':
    	exit(main())
