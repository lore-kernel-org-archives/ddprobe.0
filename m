Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C407E
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 20:36:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646598985;
	h=To:Subject:From:Message-Id:Date;
	bh=cWh/RzKJzWFHT1h+ASJujxo61qsVSmzjwuztRiQa5GY=;
	b=Ja8l0Ats+/OYQ27ZgiIIr2g8RDDwrpRvEur5fScPCjDtolaoFyj37CTFQef2fHD/
	LZu7A2kiZQvmWNXMtPylbOf+bwecYRyOfLC0QnHLHFSc1yxwj2KTv3vB2zrYjn2cWGQ
	VxWw3t7T1SGI4KqRR7jVHixfdJgYtmJ5C8PEeygM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646598985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cWh/RzKJzWFHT1h+ASJujxo61qsVSmzjwuztRiQa5GY=;
	b=Fryltj/zEPdumzYO5DPtKRk9Kw68s+eVMe4dn+zOC/qJTErT4W8sgQWAWGJfKDoL
	hZsyl/W95X24NFri9gIET2Wy5F5MKVm/BYE1aRuM4lLcdZF4IwkaphOfMfdQmVzLS08
	RSJwXTlAYQDAfrMlQBOBZhifMOJnw9G14kEamNak=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f60f29424-e65cdd5c-f21b-49b3-832f-a23506915f7b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a04aae0a8dceccb8e1b031ba1c13ecc7608dbd2f9524c10acca90dcbd3c5b9e0
Date: Sun, 6 Mar 2022 20:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646598984
