Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D07F17C
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 01:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C6B3C433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 01:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670117454;
	bh=7HlzjneSDcFjd+n+kqPE5XmHdVYczJOQYcsQJ6kmLEY=;
	h=To:Subject:From:Date:From;
	b=ddH3lT43H04x9NarVDPWauy8Ka87mnzyXNey5i8r/KXvIEjifleRP4r4t0sufz9O3
	 ty+bilkog4Ow5WswzMV5nBu5CPFb7gSf5a/EEn75nLnFueByhkx0e4XHRyWuxOLG2l
	 mRpdbGzcrv0n6W1VvYSZrhZiDQoly5XfkZFNgZxNvbFX7BqBDviKoycMuYxRj0kS3k
	 nZZksPZKqc+w78TD3GXVoucibAtd9ADyvrmxwDE2vy5rX3jheM5lRyMkrnfaNMdJVj
	 nUfxOFEvyRtq6GK/1qfyWppvCnLiVddl2unNAtiBbCFNRuuXccUAzGvy/QvPOpsBuC
	 8aG6taJ2C0Wzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56B0FC352A1
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 01:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167011745433.13696.13066484014735632784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c245927bda10e76dedfb43b6b92db9d0c55fd3dabe92f34483ee80b93812fbdd
Date: Sun, 04 Dec 2022 01:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670117454
