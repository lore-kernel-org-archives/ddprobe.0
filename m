Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4AB97F7
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 10:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BFDDC433EF
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 10:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671272487;
	bh=H2lYHc/Rc0Hi7ulyqIm4mSU2MTa3SBxApwd7LsIrh7c=;
	h=To:Subject:From:Date:From;
	b=pN48AEVmcw905pGR17R9pHIdDDpCUzBrcfa/RmHn7nSiXnbYsjA+xhqxhwpv23X6v
	 wcpSlWCdkcR7IVilX7ja8lI3w1xCUabMTtgWB4FG7ZZemCi+1zTLMFA19h0WlLNz2K
	 TkAOFI7Eg5xpkcewntOmpYNtyQED/pB0ErXLwBo8m/b/BNY54fIj1WLAUG09NULGOe
	 SK0DjtJ9B3WBzFmYXri3dzqbWUJ0uHkNmEPutc9Dv26BznODsemvS4VjlvC62xAg3B
	 xSCbiD+IR3WXKrlzjpE1U5BqobUf9IIsppobCC3/FuW7DkRafXy/q39rWZxdMM5grZ
	 ykM7nTH13j2Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C0D8C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 10:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167127248743.13922.6101576959563306200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b98b15206d55966e78182e07c69251a15d20b107290419dd2839cdc41770b540
Date: Sat, 17 Dec 2022 10:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671272487
