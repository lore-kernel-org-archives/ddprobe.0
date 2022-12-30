Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE02A539F
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 22:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C6DAC433D2
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 22:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672437687;
	bh=hMtrCNXQHK6DlVNLpimWS2UjbOw2Bm1xBjN8/MToMsw=;
	h=To:Subject:From:Date:From;
	b=Ts9buskgD2Rltua2fgHJuxn716JJdZ3YBMMaPZOfOBb6Ze0Y7sYnQ3xWKZj+OSYxF
	 XaFqCSzvg7jT19cWcgj8sNZNTqvT7bT55lP3tAER5mThELCbBtcdjN5gQg7t5uRFaj
	 rqd1U+3cOoOB5pjKzy4k+jN/b/Jny5PvXKi43wZJJw1Kbm+zwUEG9A391a9uF4WIQa
	 bnvYhZpJbMgtkpGylqQEQxxwDIBvipe0wP1aUSccVYJUMbMyvZOILRhBFpHFsd9VkZ
	 q8CnfeYgRzvHWRPe6L5UBuKjboZYvCpdGLhDmNSDs2CdDGPNmoBL76qYJu7jUOwG1U
	 RBjHMbou4e98A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 640D9C4332F
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 22:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167243768740.27908.5895802752978209405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5da838ad5c21741311577e4062c520462d8863afd209195b17d9ed77ca77aaa2
Date: Fri, 30 Dec 2022 22:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672437687
