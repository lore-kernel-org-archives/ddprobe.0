Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D074B20F1
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 18:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B05DC433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 18:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671906087;
	bh=LavjJ4VRkH75hPUNRmcwcumefiyw1QCSADO1uZPzI54=;
	h=To:Subject:From:Date:From;
	b=svBb47bO6aNWnJDVj13PvgHs3WQLIwHAAUt7deN4RAk0wrHq1O3evbvyalkYgHWb2
	 0NHO7JmW2lUwYouU1PXpjcFE8vptm7gSEA5f/j2rJvE3BeuEFaRDeBCDYWQ4/Lzuez
	 tCgiRoNMPeofOJn/MoOP01xHNrMxt9IYHFdCRyesVTC+kAiJRohFiprRGR5GU3kWyp
	 Zoh8//Tj3L+vDYnf9b0Skh19tfLC1txzVgRW2ZlOdA3YYFxgp8VHWqyjtDsYnjECkb
	 BCXCX7lH/VWwk4hOAdILeHb6rOTzcolqbdFFSWWIY55kJfsWwucbUV9qsax//HXYlx
	 78hZOSOSjB6sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63EB8C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 18:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167190608740.11733.4787748229827099033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3d295cedeac7cf2efa8a3dae83ab987b69b9d7b3360fd732afe8b74cdd9c297
Date: Sat, 24 Dec 2022 18:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671906087
