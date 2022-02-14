Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7F07812
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 13:20:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644844850;
	h=To:Subject:From:Message-Id:Date;
	bh=0vURptvGMubaCLxfdg3FKO2KH7uQ196YXbII7wWPQYk=;
	b=OI4oCK+MiIz3SVS00qn8cRuIT6jhk2bdHwojRz4f2ExXxjgWKunmHxzn0MPuk3uA
	REyG18tjSWWG4MxtRry7szFLAiZqVfl9Pl9uki5WCGrrwjPSk8zhGxV3cs7uZQY1Su3
	x+GdwYcCdeJa3+zLgX/GaTh9kUk/03MZcfGOjg/s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644844850;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0vURptvGMubaCLxfdg3FKO2KH7uQ196YXbII7wWPQYk=;
	b=A0ruE/MTL5MGLD0NNfBDzGm/sDNDYHedyPuUhDiFbUAEDkX2TqTwO2TolDWWlcgq
	vnPdjRaq7lqbwXVGb8PCcqRrjxJ+qacT7LwELhYhT9g5ZhI/Hh5gy4WhEqVN4mgUeOP
	mH3WtSdjYJZvzI8CPjnQZ1Ixn2SI59YK/MtyNSXE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef8649b07-a27afba4-f768-4285-8580-763c0b1f3d67-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1b046ed6878acac6fc4898f6a1c09567ccaa4797f76d47daf2e510385e03bfa4
Date: Mon, 14 Feb 2022 13:20:49 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644844849
