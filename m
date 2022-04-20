Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338817A
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 20:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650487678;
	h=To:Subject:From:Message-Id:Date;
	bh=YaAwo5LgolZyFS7dkUAk88BkiZT8Eem/ebjfOGEcH8Q=;
	b=injRfqAiRU5fpwNYF7RJFt/UCeniiHoAeUPaYidlAof7zCq7/q1r6p3o377oB6Lr
	ZJ2PQ7/rPXpeCLXR1X/i7yu1ftY4/InUdcBMwngU3AHTezO4qEN2jzRAmwUsU/5CqSM
	2gG4X++yXdgPXbZsmdSpsPU34EV4QXar0MaPZMeE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650487678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YaAwo5LgolZyFS7dkUAk88BkiZT8Eem/ebjfOGEcH8Q=;
	b=WJ5DCoCqPxHM09tekgqBBhcB3YoSDOe1Uxm0xh7x0w01aFGqAJKFCkcDZE5Zdt2Q
	MpSSnSeMXB7ZxXt7ZDPb8f6UISUBeCYKxDweMPXuFPOWeEIAdyU7iwiWZwNL8jWvmFa
	846Tka0h3tW1avfcZwsXGb+c/HO4PBHMshTb3QI4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018048bb5526-b706aced-032b-42ea-bdea-d2d7d2767f10-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4f97858b77c7320864c690050169c6c2dacdf0142b469e23939de5d41a0722ea
Date: Wed, 20 Apr 2022 20:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650487678
