Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F797F6
	for <ddprobe@lists.linux.dev>; Thu, 31 Mar 2022 16:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648745038;
	h=To:Subject:From:Message-Id:Date;
	bh=HbrNKXVEADb8HBHOcR5mNrH7mCNUFwb3ifNPUCblgU0=;
	b=dl1QlxTTnbDWKdRB4cJ1b+4EhYR+WCIfsibVOzn4yUaoU8CrnRPypqWS0hHn2dMP
	Urk7ymwCgzAkXdSH5LlyzmI9iQYz3wMNvpbUAOjweYlnwrWmmOrWjYdRFrFGBP9FwGD
	ZdSszlE+CsWDcaMaUj7zTWKkcXr1j7IUJAxM+t+w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648745038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HbrNKXVEADb8HBHOcR5mNrH7mCNUFwb3ifNPUCblgU0=;
	b=RcpKv3a/bWsCcBtDldAZm1x5xDFOkO4cZsKEWi0bIt6MtmL8sx0DkVMY2QAq6NXx
	zrWZvICLlf6S7V9/gthSJzMu0JWyPLoKCy/svs1iBox0p/HUNlXlq7QiO1llhWBCqbS
	YEJS1Vot5gqg3Ri/1VwFWijhv/FIZDLGp/nbseuY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe0dcc1e9-7da3d98a-18d2-4511-b633-02c0c6d85d9b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d1330f7fb959fa3d589243ad888cea240177adb7df26ea2169ad560139906854
Date: Thu, 31 Mar 2022 16:43:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.31-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648745038
