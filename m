Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B498C122AD
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 19:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71087C433D6
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 19:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667849454;
	bh=5qD6vNCMTtooQmdH1UR/enRLQ2hlaXTFSDP2BEcCdos=;
	h=To:Subject:From:Date:From;
	b=YuBKoPvXr+trqXXKlwl1rvddm7Gu9z9xrhRYbnyRmABJoLfVoQ/ix/elapjLX0VE3
	 IFNFQLesEiLqp4rXL7kSTa2LuXn2/BzNn4xaOGt0Gwpzz6wtuBRSd7UqtWt5Obv1Q3
	 4yby340taW7oHROFaPthoZn8kZ1PaiFgS92LLe7ZaH5LUYbwfr2hXebxHNmsSkgQV8
	 /UzpA1iX/+KxY+2lLJlPybA0IIG+0g2RgkWmOiJVF6XhYIuJwAmZlk6+F9GOZh18bR
	 lCgYU7OqZ77xK2Ds5w9qVgKW5k5LvhzGDdAScQLs2n6/xpiFUhZvfCJEeAVKXhiEFS
	 nNOxmTuLsnlkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5203CC4332F
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 19:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166784945432.8742.12072295113631055368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0e099c0644723523c0d9e927907e212197b1eb357732d9164b444e5415d6594
Date: Mon, 07 Nov 2022 19:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667849454
