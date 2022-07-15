Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7CA6643
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 04:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657860412;
	h=To:Subject:From:Message-Id:Date;
	bh=LEidjCt5nQHAlD3xFjeaN11IdbZg9MELHJhbyib0Z1Q=;
	b=etDLsgW0x+BYgUYHHp+MJP97CCPC5FJ0kGlnsWKj5TAv+/9HH303/mdEgaHHVudm
	vsm3ryxel1sjlcMI/skvlgxgF4Pkk/PrWVeHsE3OMQwBVwDJiGAr6Kdn06hNifL0lbC
	OEfP0Ms+Q80E0Lgjg35KSOXh12BFscjGKPPqN/Jo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657860412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LEidjCt5nQHAlD3xFjeaN11IdbZg9MELHJhbyib0Z1Q=;
	b=gj94Dm+Busth2gnQWYNZRq+qiL2vFGSGf7KgrFtOAsckoCgxs6gux70y5awRktyJ
	5gynLOtv+1p8sW792Sd6PactLA7dlFdEfDm6a9NlLiWXzwRnw9i3azyRH6WTBdFeXFM
	k9mFMH3KzqtlckjeRmevQrxLY5IEJ4mbznLU/QFM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182002e53bf-ed79cc4b-d873-4a2e-aa92-5d55acf4e2ee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 658c4d87c08b7fd467a5ddbab0979f16fc34de440fbc1f5903c8c110d5805d1c
Date: Fri, 15 Jul 2022 04:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657860412
