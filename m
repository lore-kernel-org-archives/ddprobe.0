Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 564677B
	for <ddprobe@lists.linux.dev>; Fri,  1 Apr 2022 16:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648830418;
	h=To:Subject:From:Message-Id:Date;
	bh=TCYUuEyDmHU0tXPkBGm6JrX+K1JVzOaeuYfnCT852ts=;
	b=aPIR5m6ojzoVLH7jtHt6CLBqD3udxfG1diEdW1OY4Lkl43A8IpJV0Y26PeRa2ZUp
	CJa4SVgjJpdRHKbB+keNpvo5auJlC/GsQWn4qoJU9gYH7BJJvqpStn5OLdRKAzIs75H
	yJ4Bu3jR2Bx9tdHHjy/zP6qc4gZ29u/jd5jbYpZk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648830418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TCYUuEyDmHU0tXPkBGm6JrX+K1JVzOaeuYfnCT852ts=;
	b=XCxExNW6br2wpuppKL2RuLMIkIoDnKCFGkgwyMg2lD62spgh9SX//4OrTkzpYq80
	uzpvDUEncuyeWo7cLFeOyRtUFyrSLRuXwnmV+ErMqVyM66nmvO+Si5jh7z0MdqCWqm7
	iSNTaF9pjOzfuccENNdGlH4/qdc446dIlgXFosdQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe5f38d59-96203af9-f6e1-4f49-b718-9be82b672a01-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2b1b6bfb59eae3601cad063de615afc7ddf16b70ebbf609e02d62b67a1125b13
Date: Fri, 1 Apr 2022 16:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.01-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648830418
