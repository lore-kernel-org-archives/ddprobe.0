Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EA6D2572
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 08:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647763584;
	h=To:Subject:From:Message-Id:Date;
	bh=4Q+QYMikTxR1Yv4A8SuCHPopmvwjaKuKYdQbsUuNbQw=;
	b=COBZzKdcmu8k1213NrfhWv54pY3H+VmZGkSZAHBZXbjVhz+kwe8OdPKJJpb4zgZ/
	HfAk7l590mjLIwg5BflLp5CZBSiWcYB5IDGhSVe9LXN8YyMzh1ixV2VEsMod6g9voM2
	ambJKxePxeTZ/nIZF1S0BEL6yk22RswAVD39vzuc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647763584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4Q+QYMikTxR1Yv4A8SuCHPopmvwjaKuKYdQbsUuNbQw=;
	b=RD9FmDP23B6VFULOg4yGO2kFQMtJYm+2pHJhNgrm7+7cFgg1CsKJ+qkZAyNdiMok
	eB6QPo/yxJ5fbMHI5v1e1OHJJOV2BA4shmclsjoNKyw33a3RaDkNRIjdfccJiMkf/z8
	cyN9jFHPXeFWKDmcIEH4p+4oad4TBsmWNAivAmls=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa65cf6fd-a6d5a2e1-7e4e-4264-a2a6-25a2b6be9ccd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d4b75e745d3a5a39d9c5413bdd871873e54ea22f8d73ce67726b8bc51c0aa4cf
Date: Sun, 20 Mar 2022 08:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647763584
