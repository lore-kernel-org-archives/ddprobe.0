Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCA441FCC
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 04:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8184EC433D6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 04:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661486452;
	bh=DVxPlhNMIckm9m7o9cfGmkslK3+hm+y+m7NWRPDjhvo=;
	h=To:Subject:From:Date:From;
	b=fM9mqtJLpJ0X4fGNUgloAAdcPeHiZFORaYYu+u9qKc6ezft7jxvOdlpg3Hy5y/07j
	 UOk9uv7Y2paV0U7XI+eVrY+Tmy1zypei1dDd1AG9CbLKCk3uynRlI6vRRvvq+zpi8o
	 Fon27mS2YyD09dJndUcCFd80VoPdaeapSGzyM++5km5fkWXTYROcMscBK5+7M4EHoy
	 nSJ+b2QaR3Eb0EhjgM5K1HQ/BTKPR4foFI5NHBmDfGO1pkAPYY2UfbVf77G/Sn6gHb
	 Ct0ZLfQOCq3ou4j0RzknHF8qcVQASBxrAN6Ac+8JjmhlQIMZqEEbJbsZ85Zf63NT0j
	 vBAjcW85AYGeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F25BECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 04:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166148645237.8284.12622303610763681089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53ff56c33f255375c3355163204896a9e1c6ea02200dbb50700719ada4c7aec2
Date: Fri, 26 Aug 2022 04:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661486452
