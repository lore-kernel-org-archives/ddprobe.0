Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDD9D1866
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 18:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650480958;
	h=To:Subject:From:Message-Id:Date;
	bh=tUI4FGl7rDfchgf0rlJawqyoUFuUMyiJUv6MrtttrGc=;
	b=U4j6zlXBGiRb7RnXP6q+vXZTrldLRs6yizuYE2RZXNiAcPrqgNavEUo/iK02Ctem
	qEZHxr6ppu/KvE3QJMBJ9cE9PxzsWkeA5DXetcIiNEOYxHMQbUqmg2/67Qa+aECcjZ1
	2uSTJkkMy/mqax0fK1Ihm9Wig0Y1x7GAWmoJVZz8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650480958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tUI4FGl7rDfchgf0rlJawqyoUFuUMyiJUv6MrtttrGc=;
	b=A0z+rQSx9kLdgFOrVc/bEKtfjlBP0s/bG7aDQvqOybZvQIuV7vSB9KMpqkHvf50p
	fsl1q8Db/GH3JdjGQy3Rj6RgTLciClSiAHEO4wdZWK+TLdtSq5HDAODpTFc0thJcdwt
	mjJ+Z1fdJbBarUyDHLJMX9VYy1QdapUgJGcjLUsE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804854cb6a-0a6acec5-5abd-4efc-bc74-a20e718b08ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ac88539fa393f2318bb1928219d3f936990595d31f6c1ea57ba667a0c5a949a9
Date: Wed, 20 Apr 2022 18:55:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650480958
