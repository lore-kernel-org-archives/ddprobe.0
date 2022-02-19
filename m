Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAB5F539C
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 12:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645275385;
	h=To:Subject:From:Message-Id:Date;
	bh=aRSIpT37qAhGKceb9pmhZgmEZHOpC5EsJVgH8IGR0vw=;
	b=PmU49LOLSd0MXTeO78OE0HAjPjDSGr0d2DKlCd17FVbsm+FQY3ZybhmjRH5c+ZzF
	jzoeS0740cRimaJCKRdkkJFJ01Wh6jfP6NGS/v0vCzEU1MVgOjEJqp2Cpw73ReijC1y
	jyrLvvEgCTUPrLhsHnrvDJJq/Eciqo/7cp2UEE7w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645275385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aRSIpT37qAhGKceb9pmhZgmEZHOpC5EsJVgH8IGR0vw=;
	b=CY7fEzWko7O7qCc1EnHx9CTF14euY/JSKUxfSXqzgAWFOOnfri/jZgH3ep4ONGOb
	3ZbqziNC8yNnfiFjir25guaEgK1NKN9735etsdY9EtYMUfNyRSDQ6uB77HQGSDI/mtE
	92CQVq/i4mdb+JTotiZC5aMXlwot5tL0RMTgsNqA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f120e0bd0-11543bdb-8ac4-44e2-a61f-3a792a3263ee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ae034a1d90aaf06877a8320e674183393416921081c5f18746b54d918aec2768
Date: Sat, 19 Feb 2022 12:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645275384
