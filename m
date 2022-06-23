Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 013561FAC
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 22:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656023812;
	h=To:Subject:From:Message-Id:Date;
	bh=pdYODSA2mkNc4hjQI04n8KUKVXngxUM7uU2NDqqeyOs=;
	b=hvOO19CbOtw7lO539oAbZJlbtl0afCN3Typw58KCLiXPwWsZEScKYLVSG0w/ElWx
	A2yX4tR6cXT0TEO+p+EinfdPiDvAqR27hVElqjYYYpNXAFNxzPHsE8M8Y9CpZBgmgUO
	ld5UYgpBSilfyVuqLPLOw1NTUV23hZ42lfmkDufw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656023812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pdYODSA2mkNc4hjQI04n8KUKVXngxUM7uU2NDqqeyOs=;
	b=exrUDOFsDPT3O4xA9g7FTFiDKGM02Q5XtdgC5E+N18E+uY2OnKVDt54/jLUpM2VT
	Wo8v/dELmylCGh0KL7NdCYs4T6P1aN4yHK/j7xybvuLvNIa2amDhWMMaRmpE7taDGYC
	kbBZoqol6I0tpCXCm/Tjkej7Ej1G8NajL2P43xw4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018192b608e5-986e4dc3-0c60-439f-886c-010c9a9ca49f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f4d59d0773eab3d1c9f5877ed5fe134d2f3a400972cf4bf26fe5edb68a6e15a8
Date: Thu, 23 Jun 2022 22:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656023812
