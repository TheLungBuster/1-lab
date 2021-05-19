require_relative '../calcul'

RSpec.describe Calcul do
  describe '.run' do
    let(:runC_C) { Calcul.convert(10, 'C', 'C') }
    let(:runC_F) { Calcul.convert(10, 'C', 'F') }
    let(:runC_K) { Calcul.convert(10, 'C', 'K') }
    let(:runF_F) { Calcul.convert(283, 'F', 'F') }
    let(:runF_C) { Calcul.convert(283, 'F', 'C') }
    let(:runF_K) { Calcul.convert(283, 'F', 'K') }
    let(:runK_K) { Calcul.convert(283, 'K', 'K') }
    let(:runK_C) { Calcul.convert(283, 'K', 'C') }
    let(:runK_F) { Calcul.convert(283, 'K', 'F') }
    context 'conversion_C_C' do
      it do
        expect(runC_C).to eq(10)
      end
    end
    context 'conversion_C_F' do
      it do
        expect(runC_F).to eq(50)
      end
    end
    context 'conversion_C_K' do
      it do
        expect(runC_K).to eq(283)
      end
    end
    context 'conversion_F_F' do
      it do
        expect(runF_F).to eq(283)
      end
    end
    context 'conversion_F_C' do
      it do
        expect(runF_C).to eq(139)
      end
    end
    context 'conversion_F_K' do
      it do
        expect(runF_K).to eq(412)
      end
    end
    context 'conversion_K_K' do
      it do
        expect(runK_K).to eq(283)
      end
    end
    context 'conversion_K_C' do
      it do
        expect(runK_C).to eq(10)
      end
    end
    context 'conversion_K_F' do
      it do
        expect(runK_F).to eq(50)
      end
    end
  end
end
