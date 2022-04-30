Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB1017B
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 00:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651278839;
	h=To:Subject:From:Message-Id:Date;
	bh=zocgs7g5CggiKSiKPtfnGyuwBccSH9QdBVTODg1B8CY=;
	b=l4tWhUO4/5aU5fsnMvFy2xHCf6D+QJeeBfxhTHUsQtokhPG7HSe9sCL+Z1tmj7z1
	rTAUctGrBmMLCC5JRtMMk3AfxpSDFcLRLZyo2828h/jrAHhWpUyGMFd9nUt0rgADDjO
	Fnyr98kGiUisc0Uz9mdquzKUvAoFGHmICJNBBo9s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651278839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zocgs7g5CggiKSiKPtfnGyuwBccSH9QdBVTODg1B8CY=;
	b=OiQbbuhnUiHlZNYaUdvrFZ4FjiHKNY2pVtnYerZY8g7YMsvhu70senkBP4xG7Qit
	68oZCTVmltDJU2jwqvh+nhlCu2tlPgeyPUluJ3nMHMGcs6hoU4cUMICdLeRoXgnKWLN
	K2G/5/3j0AAJqiDcR/Xp1XpBQcILi2XLlCH+3UUk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018077e37a17-67826351-4042-420f-958c-91d175ee68ea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8c67e5d18d9e46d209405477700215ca5134b7f424e9f0580513898e154eebc5
Date: Sat, 30 Apr 2022 00:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651278838
