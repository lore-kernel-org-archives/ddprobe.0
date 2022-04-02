Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E7091FA2
	for <ddprobe@lists.linux.dev>; Sat,  2 Apr 2022 22:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648936978;
	h=To:Subject:From:Message-Id:Date;
	bh=wM6J4JfLIdcYSGM+K5zBp+kQNG9An03VsN8auJ5Mvqs=;
	b=EvMh+tSPMG7/QZiW/631e+nx9kOE/gbIxlVJbDDqY+Nvglsgl//mu0DsKaoCfIxg
	0P2D0/SoSC7y75gHKvtokR5cEtufMKKkW5OT+GruPrf2u3lyb4isL62Tn2HMzQJmDNV
	AuC/TAPJ5Ej0wF7q/DFFqdeY1eSlulSGSYT9lOeg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648936978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wM6J4JfLIdcYSGM+K5zBp+kQNG9An03VsN8auJ5Mvqs=;
	b=crHTXRmCnX8SUbNcuctMowzxsZshu+rkUFTdNeIQRNLgX0r6lM1xLrLXHr1KLLv1
	FO4KqJFpKd0S/JD8SiSAFka2s5bdd2Y2mTXOqANp/lZyu7AslE1GKtpPQp/R7ewKjIB
	BFvDE2AQkXFxqtRewRjsDzMggVDEc+f7MXfIHtpM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fec4d876a-4c339aec-c0cc-4bca-b878-54d7f1a9cc56-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fdae700ebb3a615fe6a5bfeff0dead2b001980e873ac63b973d1c175fc4f4c85
Date: Sat, 2 Apr 2022 22:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648936978
