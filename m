Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBA49107A0
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 23:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70D71C433D6
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 23:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669936854;
	bh=b2WNTCzv/2J5laiNX1KLQVNQ+BJ5sSJH1YbcGT23lCI=;
	h=To:Subject:From:Date:From;
	b=Q3e7ZcNliGgTc/b6T+wirZV78qeyLDpAKDLpmP5LQW8hwfD43euTzpb/KEXP5Bp3r
	 RUBO8HL8vDEvcaCYz7mKGmABRTXD59uJQf0ytSLYjjUTDmiyyOZ7D0/EUYhvSFm4ep
	 vrY0VZQ7G2dTIOvCuKDtN8kHiFNxvVnrlUjG5K/naY1r9fCenzytL/HIJJl2GnIBnE
	 FPzSGvt7jSOaRfQrV8aOmzWOd6odj6yzAG2s/MdjYpcmCZv1SbIOPkWg6ZK9UbxdUk
	 1gZHfch8Lqhuau0TZGPzOov2vXW2Ifehc45w1xkW42SCjTs2cOJFu2LDOz+APsCQch
	 Gb8b+TNOn6Qlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 528AAC4332F
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 23:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166993685432.22969.9374143634929714554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 455bd23a530136940e6e50e220a1c31980540a322f730147a68181afb0923f12
Date: Thu, 01 Dec 2022 23:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669936854
