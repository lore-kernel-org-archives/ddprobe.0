Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 704067E0
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 02:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD31CC433C8
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 02:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689818528;
	bh=oLbeI4nUGPifa64kIdtLT2cucZC+kMVlZClJG6Sx2J8=;
	h=To:Subject:From:Date:From;
	b=GzxvHWUkJGJdg4hE/Idlz1eGCeX/7/Alk6E/bL9OY95YmQKyJ920LJ0K0GZ7goKHJ
	 POoybeMibxgCaCDDdfEXGBF27fLi6XjTeGqgH6EmELbjTGaJ29ieHQRVZNf/pDQ+Kr
	 piCvC5OTAP0qMcQs7izaFdZoVqqyEVhX/EapL2vzgWF21G9WBuhlziCyzwQtoO/fPa
	 onZBBLXmDt15B03sGSH5DTOhonIcoJaUjpwWUxg/fLS2huo5hj2c3qY9CDCHbfMFXf
	 aM+uZqML9qg3ceXJFW1WSfVnZx4VheTiGq41ERJZcVfdBNoyRLnns+bCsiXpEuUSoL
	 ORdtylaYeR2iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF767C0015E
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 02:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168981852877.2278.10370820402056530394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c38c77d48efd623c64f2fbe53023df2b00a81e4bf4bd9976d6dad9c312ce0418
Date: Thu, 20 Jul 2023 02:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689818528
