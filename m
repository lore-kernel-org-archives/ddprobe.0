Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56BB17E
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 22:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648334098;
	h=To:Subject:From:Message-Id:Date;
	bh=XKoghd3xuf3kZ33nQFKM1ELiAcN8in8nQSzIX0lhHzc=;
	b=I9JBgB3F4ZyXjOL8qhOiqiX3ghlDDkANq0xrywcBhYmeBCLQ6k2wM3q6tjpzVa4s
	PXC7X522UkHkSMvbaXP0lliYP2sPEGRiSs6/Bgi8I4wEz7VwUE1/LYHNA7QYfPXed+m
	Lv01dVUSdByDowUO6qf7IczghwPPx8BzKHCZeN4k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648334098;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XKoghd3xuf3kZ33nQFKM1ELiAcN8in8nQSzIX0lhHzc=;
	b=dVijDOMcB4/QXXynJvmaXuDSEedPuD++25uvUh4i2YJ+YeCZb8fnHXViioaszOrE
	2yHZMQ4/zQbFBLy24cKuG+aMQjJJk6cSOP6qglXtMJ4G/NXL0fwkPIZ2gWPCnaRncVI
	zOmkNES5k33xl4wDjIagWZPk18NxH8mkyrj0aw2M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc85e4fb6-b97d8994-b781-4fa8-9c7a-d1928257c593-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 85731b2392f2b4f745f9b5fc16eda9ebffe5172ca48252ca739b585c9b4a8e24
Date: Sat, 26 Mar 2022 22:34:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648334098
