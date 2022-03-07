Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EDD87A
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 13:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646661085;
	h=To:Subject:From:Message-Id:Date;
	bh=4ejVNOCw08CZJcH/ahqJPtn89Zb5gq4IoushaL5JH0Y=;
	b=BJiyRgWiMGYErW5pSPYganSMuGlrB/2hrNxwMzLSxDIrbikIsCB86TGX7cQuISSm
	MuC6PvGRYcoJpRQ5Ir7wkwpWAiHSMiREgHOptzXMTJ3dKyFR09uGpSBSyOoYpbz3nC1
	akUFeRFQtuToL2a+nZswNqW1sCj5R1vJ28OjHHs8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646661085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4ejVNOCw08CZJcH/ahqJPtn89Zb5gq4IoushaL5JH0Y=;
	b=YMPTxSbXYaR6fijNJF4Td2YzfJ4vDz+yzlTDS5JuDkAVi7gBk0yzWAONYDiAPWzG
	NySf2heEVAO4gtZvct8C1QiwEcBUqbLPZaeE9eOSRWWocnmau7P9XNPDAbjncQkhrCT
	4dw49OxoXAph+j+HJrLm/FNh0GtiGA2xQ7RKFVgg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f64a62662-f78c8003-8b15-40df-b858-5caa1c75c065-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a17e85844f382bb8acb7adcc1df98440ae5b8a5d8ca3b61989f51bc7e0508867
Date: Mon, 7 Mar 2022 13:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646661084
