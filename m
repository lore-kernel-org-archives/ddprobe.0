Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE2D43D6E
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 17:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CDEAC433C1
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 17:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666371653;
	bh=wkylKefggmyLZH3KITTtKtfh5cgsFr7O0Yc6L4knJqQ=;
	h=To:Subject:From:Date:From;
	b=Pa//8ktVyryyCwNdzpHKupxjd/td6teGifWdbnTuTmDC1WbCytKua8/5Cqmz9oafW
	 HjmslU/aDtEql1u9lQdkK0iLpdt/fHNfzwUAH07pRd2gZHvoSDji5vdH+nGQx4oL9f
	 HylJMP3Qmk0WNKwWukYClZv3nb2zpALPwBUXe/4yiGyq2ddN9Nzbm2LlF4ZlRnVr4n
	 rG7pmp+QAfTGGCiETX5ljRkBjJxAgIHndro5qjJrBHwG6hEd9eWPVgHzYY8roaA72B
	 lxwQ6B42R3MxjUDJHsn71gR/tzkT3ugRCcTljuKkTbhup6KJGuNPCkKpNh7B2+mqz2
	 KO5/oPzxvPybg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54352FA373D
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 17:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166637165333.21489.17984316712139989383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cba20dce72890bd43b41b2f7d8e025cd958f966a56af6076c04d5dda7a684c58
Date: Fri, 21 Oct 2022 17:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666371653
