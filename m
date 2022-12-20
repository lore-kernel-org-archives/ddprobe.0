Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE718186B
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 08:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83A4DC433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 08:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671524487;
	bh=uxxRW4Kublz7Vphc4mbkKTc8pxS3OaWblcewKVNLt2M=;
	h=To:Subject:From:Date:From;
	b=DuzOCrv5nJXB1LE1s5kDd6hnwbZR85TL1fl48itPf+Y/ZtXpKoit+lhVn3b7BjlWT
	 xPqjqDUwpeFk5v8rUMKOi6YDqK9LBaGlnz/mj9K8eoKuwmEtybkx+b0bTg4/a21dPH
	 +W2+EtoOrACrc3CVAohtHb7iIOb4PQcSxJ2LvSMGR2xpqhpVh6TBFafs74DWGDztBD
	 J1rNiGaP+w63rQR79uafKdruzADkbgzfGAf8jgcTYHpZgtoxNRMuxV4gaH8MhwL+yI
	 s6ZGbiT0cRAAA0c8QXClhyiXqPyindd0MTPXLqbPLEhFtXOO4xhZFml2atBn0UnLhT
	 asF6507kfu1Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69012C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 08:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167152448742.22161.16748167031334851468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7a0cc03ec3e3a10de7d6a097265f0179794888f9dc7423a6858f4783c07aa98
Date: Tue, 20 Dec 2022 08:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671524487
