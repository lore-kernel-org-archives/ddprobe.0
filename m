Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257DD10F8
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 08:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651997518;
	h=To:Subject:From:Message-Id:Date;
	bh=mB8Iv5uKn2W+ijYN8dGlmO37Y04KglqGmezoPgyfwdE=;
	b=lcu/bNh6UpKDHfiERNvJFfMSNGaeGXg4nB6HH7mXcxlg9mrVeuGArReoN8xkN8Gu
	ViHzNOKammNg2+gHp6czOEPL2mQKBf1adAIpPubZqxXkedXG082oYiZX7tTC/SlYr4B
	tg4Okt//eh+4tpOsyL07siAzX+Rhi2beooqbeuVc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651997518;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mB8Iv5uKn2W+ijYN8dGlmO37Y04KglqGmezoPgyfwdE=;
	b=L5BB0ud6k4ax8VA2Cw9RPCjaToy7BAooep4spGSnpGQmDI5stJLwGM5QYcu6636G
	nHz4YNLCqIcvSwRqQ9q1vf7Z5mH0DjQgpBPtrWMYG2wHHV8P0ZWcovB557qGlHJM+v9
	dQr+x8gH5nkfdM1yLFTXuWrmapx8tP82HOnuS7iQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a2b9aa0d-990e641e-d5f8-4ce7-8f6b-0e441d5396bd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7550a80f50a85c382caf59664e4326db827039dcf5e1f5519688827033360d0c
Date: Sun, 8 May 2022 08:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651997518
