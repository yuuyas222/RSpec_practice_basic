# 基本的な記載
# describe => グループ化
RSpec.describe "四則演算" do
    it "1+1は２になること" do　#it = exaple
        expect(1+1).to eq 2　#前はexpctではなく、should使ってたらしい
    end

    #複数いれることもできる

    it "全部できる" do
        expect(1+2).to eq 3
        expect(2+2).to eq 4
        expect(3+2).to eq 5
        expect(4+2).to eq 6
    end #テスト失敗した際次のexpectが成功するかわからない

    #describeのネスト化

    describe "足し算" do
        
    end
    describe "引き算" do
        
    end

    #context before

    describe "#greet" do
        context "12歳以下の場合" do
            
        end

        context "13歳以上の場合" do
            
        end
        #contextは「状況」みたいな意味合い　describeと意味合いは同じ
    end

    #before do..end

    describe "#greet" do
        before do
            @paramas = {　name: "太郎"　}　#example前に必ず呼び出される インスタンス変数使用
        end
        context "12歳以下の場合" do
            
        end

        context "13歳以上の場合" do
            
        end
    end

    #letのつかいかた
    describe "#greet" do
    let(:params){{ name: "太郎" }}
    context "12歳以下の場合" do
        
    end

    context "13歳以上の場合" do
        
    end

    #subject
    describe "#greet" do
        let(:user){ User.new(params) }
        let(:params) {{ name: "太郎", age: age } }
        subject {user.greet}
        context "12歳以下の場合" do
            let(:age) { 12 }
            it { is_expected.to eq "僕は太郎"}
        end
        context "13歳以下の場合" do
            let(:age) { 13 }
            it { is_expected.to eq "僕は太"}
        end
    end
end

    


