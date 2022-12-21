Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C94561FD2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 09:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80997C433D2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 09:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671614487;
	bh=tRF5OInwJI/xBsTWtj9u3xvxC053IF+zr2i4Ez3rAKE=;
	h=To:Subject:From:Date:From;
	b=cl1FtLrEjNvdrppvrYnXy3zZpw2R9a7YfBLpONo1o5UF2wQ5TutU1i6wvAop7PY4s
	 Qe1bSMfub0qeH1svEUOVJ9Z09KVrWEwPU20wLwFMh9et1RT+poPF83qFGaczlG5vEF
	 76purMLtGU2u284v25tL2xgtp7Tpg4U+4uzriRCEcZl52MHSeGXw+2LEIrw5Xdz+PM
	 7LRU3w5c337cvy/UISvmYH2IrbpH8W+7O2R7WnRlsgvzzVHja+ZI6fESr4j7gizLS4
	 oqV0rUK6ONuzpZfGGreV2XrAgdsj4NOK/4uKlPYnSPcLwBiGyYx3BzL9FUpFpMbY1E
	 yzjvXpBr5Y3Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63304C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 09:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167161448739.26363.65809324522589685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f1adc59556518ff4dd6a82bcc6d08762fd5c96bdf36a6964503d793d84a513c
Date: Wed, 21 Dec 2022 09:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671614487
