Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E735E28E2
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 12:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FAB8C433EF
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 12:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672489287;
	bh=ILIpR5wwWWpnYEur6gn2YJBPynO3TUuMuT/PB+nElJ8=;
	h=To:Subject:From:Date:From;
	b=lNwXEv6I8MlBw/6sutu9XdeXRkAAPORRX5qAozfdZNGzeczthFIwxa6J3ENdFYrDf
	 P5wOtY8gAJr4n+NePYiMa3l3jhyD5swc5zWko20sp0puEBjRU1pPN1jf3F1Ei1+OdV
	 h6YPiJlDA7MefRcTKoFgUp4/dYuQeB8x7gqxTFO3P/p7UQ8zb8EG2X5kdCpWl9ZP0p
	 QmIl/IgUS8n6/RpCLkggRk89hbrl+3hvKvSFnhJSSLpNmVpZq2fRIdBLm9gsadSiqF
	 zKE97Xr6DuX7zt+X2AsfcCYsuYz9q1SyQpYGMEm63++jFIhtTmzECgAJ/mZa1BdTCL
	 o3Ck0Q3sundzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70A98C3DA7D
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 12:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167248928745.17216.1330357013025751539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1e25df1aee692db317a245800cf9cd16f4c935fa9e0d56e1ad90e60c29641a0
Date: Sat, 31 Dec 2022 12:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672489287
