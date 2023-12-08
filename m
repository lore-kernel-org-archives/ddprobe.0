Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0E61C290
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 13:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rrBOZh81"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C0BFC433C7
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 13:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702042096;
	bh=Ar84D4yY0mkaPrsQoeH+GR79sXBfLMvU//MQakSv008=;
	h=To:Subject:From:Date:From;
	b=rrBOZh81duMEIbRvXsPFr9VfgAMwwYUhQKONYv460NPP4DzA/19gtme2Eho/aLpY9
	 T2aW+XEzBi2H/t1aqXYJwqHrl0stFb+bhvzUErdVevh1Qzh0Q7fQBt6Rvh7MPH88Xs
	 o2Cuqxgvxk0LXfRqlVwSTFVRh5ufAahRCTPN0r982nA/FoK/HehlgWEvoX+BcL0rEz
	 y7Wm7ojRKwvlXNebBnc6iH+OkLML9XJozO/lLOlEH0Y598SyAisLB/eeJ9LOLFk/6e
	 xrk7cHgjjpelNDhCOtfWrRjHVSAPwdCHqwqkBfd8TL77WjL8arGYU3lfFURiweYTl/
	 GryDMlyeIBnjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60C8DC4167B
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 13:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170204209637.6206.1462436590819852651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9345986cce631c9664f52906a31224f6e4674f40078750c0d5b52728140fba09
Date: Fri, 08 Dec 2023 13:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702042096
