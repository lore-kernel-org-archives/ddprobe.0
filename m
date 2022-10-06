Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6DA42582
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 15:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7200EC433D6
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 15:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665069653;
	bh=EQi5gMLtujdgSB+1CigjE4ET689ckGwdnKQG8VAe2Gg=;
	h=To:Subject:From:Date:From;
	b=EUeo83UKlJNBmd7cyVmpK0l2rCjp0tpPco5nQTdRvpc1jV6I3B2M4UqmEsvGnhiY5
	 XOntjO0uY6s00/jA0D6r1sB4QbmDI25lRqv4SXKUPq8MFeBf3/hk0ARaqGMf+NvsIh
	 v1hX1c4PnmvC+8lYpAWAonoEUF+7YbzFrHygS4a3BKl4CFna2ovXC2NyHjd/B6u5h0
	 TIA5hK+9373pXQnvVTESpOkxkPl1b611GfeLNYcQsBbxJvpRngYxjLyQxNU0hqa5ne
	 71ojDPFhK72I8oiTRKyTSFKs2iirroLMG3tQ8aCiwnQAhriYure4BLGvsAFQkq7Nwu
	 1sE9TSWJ7sr0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5713DC433FE
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 15:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166506965334.13569.17320842348301548183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50c3cd7e5f28aa73282e70192de49c4078c54edc34c3e60d307ad5d2870b0650
Date: Thu, 06 Oct 2022 15:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665069653
