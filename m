Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2169433C0
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 16:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650039358;
	h=To:Subject:From:Message-Id:Date;
	bh=MZSTNuKBXEURKwa+hSiWAEcKpT9ZEV/NKRplFg3eO1Y=;
	b=JirgooJ6JmqJwTM1lxvity9aAlyjmfPoisJhI4VeUkhQGu2mOerDpAOI+5YOx+ea
	5WmuJb1tUzht51qGYO8cJ5wVLRsYPN988TTuLXys6ky3kRH4yNAE8mUP9K8MVAbq16c
	eY44CWn9j9Y9M8MpAn+feKjlWijVLmCgoMIL76tg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650039358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MZSTNuKBXEURKwa+hSiWAEcKpT9ZEV/NKRplFg3eO1Y=;
	b=B/aa+8thhYEHuPvDBEmY5HSl5Unq61WJTF3JSQ8t4UWWg2NWe7qPdo50ScHvHYPA
	Q0cObjKMDVLrJpOBVonIRJuKtKvYAofCLmKGH3R7dJtcYVmBCulYvSLezrqFcM+0aMM
	7+r+eQ5+ObqF19jRLGx3Tof2x9sHbZCHiWXd7AcU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802e028394-15c8b11a-e18b-4321-b57f-8b3a53984e9f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3885f1783f8ad58d893562aa8c88d7c38a2f102d12648e77e194cfa5a8394594
Date: Fri, 15 Apr 2022 16:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650039358
