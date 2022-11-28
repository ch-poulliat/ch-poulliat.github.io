%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Simulation d'une chaine de transmission DVB-S
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all
close all
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Paramètres
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
M=4;                %Modulation Order (QPSK)
Te=1;                %Sampling period
Ns=5;               %Nb samples
Ts=Ns*Te;            %Symbol period
alpha=0.35;         %Roll off value
tab_Eb_N0_dB=[-3:1]; %Eb/N0 in dB

%Code RS
Nb_bits_symb = 8;           % bits per symbol
t            = 8;           % error correction capability
N_RS = 2^Nb_bits_symb-1;    % Nb of symbols per RS cwd
K_RS = N_RS-2*t;            % Information symb RS

%Conv. Code
%K=3;    % Cinst. length 
K=7;
R=1/2;  % Rate
%g1=5;   % g1
g1=171;
%g2=7;   % g2
g2=133;
trellis=poly2trellis(K,[g1 g2]); % Trellis generation
punctpat=[1 1 0 1]; % Puncturing pattern


%We generate Nb_paquets_RS of size K_RS*Nb_bits_symb bits
Nb_paquets_RS=64;
N=Nb_bits_symb*K_RS*Nb_paquets_RS;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                               Emitter
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for indice_Eb_N0=1:length(tab_Eb_N0_dB)
    indice_Eb_N0
        E_b_N0_dB=tab_Eb_N0_dB(indice_Eb_N0);

        %Bits generation
        bits=randi([0,1],1,N);
       
        %RS encoder
        H = comm.RSEncoder(N_RS,K_RS,'BitInput',true);
        bits_code_RS=step(H,bits.').';
        
        %to be done
%         nrows=12;
%         slope=17;
%         D=nrows*(nrows-1)*slope;
%         bits_entrelaces=convintrlv(bits1,nrows,slope)
        bits_entrelaces=bits_code_RS;
                     
        %Puncturing
        bits_codes=convenc(bits_entrelaces,trellis,punctpat);
        
        %Mapping QPSK
        %
        voie_I=1-2*bits_codes(1:2:end); 
        voie_Q=1-2*bits_codes(2:2:end);
        symboles=voie_I+j*voie_Q;

        %Generation of pulses
        suite_diracs=kron(symboles,[1,zeros(1,Ts-1)]);

        %Shaping filters
        %IR of shaping filter
        NT=5;
        h=rcosfir(0.35,NT,Ts,1,'sqrt');
        %Filtering
        enveloppe_complexe_signal_transmis_prov=filter(h,1,[suite_diracs zeros(1,NT*Ts)]);
        enveloppe_complexe_signal_transmis=enveloppe_complexe_signal_transmis_prov(NT*Ts+1:end);

        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %                               AWGN Channel
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %
        Pb=sum(abs(h).^2)*var(symboles)/(2*log2(M)*10^(E_b_N0_dB/10));
        enveloppe_complexe_bruit=sqrt(Pb)*(randn(1,length(enveloppe_complexe_signal_transmis))+j*randn(1,length(enveloppe_complexe_signal_transmis)));
        enveloppe_complexe_signal_bruite=enveloppe_complexe_signal_transmis+enveloppe_complexe_bruit;

        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %                      Receiver
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %Receive filter
        hr=h;

        %Filtering
        enveloppe_complexe_signal_recu_filtre_prov=filter(hr,1,[enveloppe_complexe_signal_bruite zeros(1,NT*Ts)]);
        enveloppe_complexe_signal_recu_filtre=enveloppe_complexe_signal_recu_filtre_prov(NT*Ts+1:end);
              
        %Sampling
        Enveloppe_complexe_Signal_recu_echantillonne=enveloppe_complexe_signal_recu_filtre(1:Ts:end);
        
        %Hard decision
%         voie_I_recu=sign(real(Enveloppe_complexe_Signal_recu_echantillonne));
%         voie_Q_recu=sign(imag(Enveloppe_complexe_Signal_recu_echantillonne));
%         symboles_recu=voie_I_recu+j*voie_Q_recu;
%         Demapping
%         bits_recus=zeros(1,2*length(symboles_recu));
%         bits_recus(1:2:end)=abs(real(symboles_recu)-1)/2;
%         bits_recus(2:2:end)=abs(imag(symboles_recu)-1)/2;
%         %Décodage hard
%         bits_decodes=vitdec(bits_recus,trellis,5*K,'trunc','hard');

        %soft decoding
        voie_I_recu=real(Enveloppe_complexe_Signal_recu_echantillonne);
        voie_Q_recu=imag(Enveloppe_complexe_Signal_recu_echantillonne);
        mat=[voie_I_recu;voie_Q_recu];
        symbole_recus=reshape(mat,1,size(mat,1)*size(mat,2));
        bits_decodes=vitdec(symbole_recus,trellis,5*K,'trunc','unquant',punctpat);
        
        %Deinterleaving
        %bits_desentrelaces = convdeintrlv(bits_entrelaces, nrows, slope);
        bits_desentrelaces=bits_decodes;
                
        %RS decoding
        H = comm.RSDecoder(N_RS,K_RS,'BitInput',true);
        bits_decodes_RS = step(H,bits_desentrelaces.').'; 
        
        %BER
        TEB(indice_Eb_N0)=length(find((bits_decodes_RS-bits)~=0))/length(bits)       
end
   
        TEB_theorique_sans_codage=qfunc(sqrt(2*10.^(tab_Eb_N0_dB/10)));
        
        figure
        semilogy(tab_Eb_N0_dB,TEB,'b');
        hold on
        semilogy(tab_Eb_N0_dB,TEB_theorique_sans_codage,'r');
        grid
        legend('Simulated BER with coding','Theoretical BER without coding')
        xlabel('E_b/N0 (dB)')
        ylabel('TEB')
