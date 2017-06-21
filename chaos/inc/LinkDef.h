#ifdef __CINT__

#pragma link C++ function queryChaosTree(const std::string&chaosNode,const std::string& start,const std::string&end,const int channel,const std::string treeid,int pageLen=0 );
#pragma link C++ function queryChaosTree(TTree* tree,const std::string&chaosNode,const std::string& start,const std::string&end,const int channel,const std::string treeid,int pageLen=0 );
#pragma link C++ function queryHasNextChaosTree(TTree*tree);
#pragma link C++ function queryNextChaosTree(TTree*tree);


#endif
