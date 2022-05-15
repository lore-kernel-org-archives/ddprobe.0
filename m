Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B3327F5
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 09:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652605679;
	h=To:Subject:From:Message-Id:Date;
	bh=G9J3ZWXG2/PHdhprnNZZ27kg7g7Q71UALSU2DiyBZ7w=;
	b=UwiADwui5GlTNq4qKPjHXNhDwdIMvV4B4WOif78ok9XN5qRWC2PV+0vl6ulEq2pW
	qnnyyADhLn1FntVeuTmEiT0G5Gz1496mBn4Ttsmie24J0y4yr2LceGsB1jDmFNYTXOM
	UQ6j9NbbvenpyU+K9TezJiB2uGKGZA9m6jqeqPdQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652605679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G9J3ZWXG2/PHdhprnNZZ27kg7g7Q71UALSU2DiyBZ7w=;
	b=DixWL1gv//Ujwi1+9q3chNMRVE7g6dqUi+oy6Gt70/BJZCQs8Ck6cQKTOCSTFEJW
	uMw8zFpFDacctiN+TLHceefFs6dnHoHfBGItQxL3NAC2J25RpoHx0yNWhGyfWut1/4e
	YU+ukCzmxEYf5jM1U1qxRk60KbnDnXQeVDBsWZ50=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c6f976ca-4badc2c9-ad59-44b9-9456-429e7a083ed2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fe899cf8bbbdb2d8177911b470461ec84dd572483066ed2447fbc79ada78bd70
Date: Sun, 15 May 2022 09:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652605679
