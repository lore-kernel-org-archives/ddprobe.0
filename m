Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2C2A23AA
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 04:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 695F9C433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662352853;
	bh=DXv1tUs5t3dj5kKLTLep0XeCyEOH4Y5hj+bPc9Bor/s=;
	h=To:Subject:From:Date:From;
	b=IQvm3w7ys7Iwfureca3Vo0lO2aRrdq+ku4fPBOTL3FZdULLucTgMObNqFq7KJfG5d
	 E70FV+Lm090PC4Sf9UzfJu5wsNeDR+UtaRLVfktOZ/gb0ftD6636fpotyc6MzQJmfA
	 wkKr3p2BIHekqkbvPZtUwbnCrrzQ+Th+UQMYnUHn1IHBVTlGig1I1RDPjFkWKCMOxb
	 xeU/rM6LHgsWzXxdUjvznxVTI0g11x62x+Nwd+8UvTn1vVWwSuZmvVhJ5NmeuB+o5m
	 tKFWgpyVL+fhitebmhhdnxJtHdq4RyV2Yscs3vP26/KFWOM1Z2MXgJf8WtxI45vCPp
	 8xttn+mKMJNTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E091ECAAD5
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 04:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166235285331.30132.11737507888625318517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6cdd1fcf32c16a7fd83cdb1e1aac9b933e41916e36e05774dcd23f056f6e786
Date: Mon, 05 Sep 2022 04:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662352853
