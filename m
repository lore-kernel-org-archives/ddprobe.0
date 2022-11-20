Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1E28657
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 16:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C3EEC433D6
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 16:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668962454;
	bh=A8/Y+1V1TARBVuON4bq6bavafuoNpSD2FlkOxzvAfq4=;
	h=To:Subject:From:Date:From;
	b=uf96DnbjNGaICFW411s6UD/GZug2/XWP5ta9ZeLCFBoTk9FUYUlrZM943yiXhEIXm
	 a388D4T8w4Zlp8ubuE2baoQp6bPoBunybVlwxrGyk3KEP0WOh0fw6MGs+z/7B13tFf
	 h3hXRDyfbuZQYT/Z5Y66Ni4r2YYenbLztOcR5sLPu9hKKe8rmg+q/4KfUa2nzv4nVs
	 h5OfEWJJUIwS9FHWhvTJC86iAlqYW0fRsRB7aXtWGauMfiKxQ3Jef+I/DScVMeknxR
	 tSob6bq2s+s9uYPzFzVGgTV7Kzsd5DuQAG1muSmYYPX2Xx5AiSdNkSCLwrGayOjdX7
	 SZnMEOf0V04zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F604C4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 16:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166896245431.27576.1837766246915921694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3e7d8596cae7a925c969687cd99a1c9a50b0a322aa6c101c517f5c5c9c987f9
Date: Sun, 20 Nov 2022 16:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668962454
