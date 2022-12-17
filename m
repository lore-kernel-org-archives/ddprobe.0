Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0076622
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 01:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BDDCC433D2
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 01:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671241887;
	bh=TrSQfZgmTFyzPgzWnPIUId/Ztwncng7XPIKgQWmscUw=;
	h=To:Subject:From:Date:From;
	b=BE/LkssosQV0pkJgXW+I+AJwtCQzGnKIyytuCLMquhdcC8gxUq3grCalQPcX6ossA
	 PEpieUWRwbptv02hAxURCbjMYsXCFnA9yODTHJ2YzzkprxDeoh4b2ODJekoUwj0GYT
	 +DERjubiAM+Km6pSTfLimJcGeLX3WtFkR8+wVNqVLJH7248Qfw9JiWQ+fY/zl1MFgU
	 k3Y9cTSi8GAHvRPADD3Jo0QUKPgJunXUBB2AIHO21Ak1nTO1UlcJSIFMLZfjR9SJmU
	 aWLsI4UCto+YFRKd7Wi6gSIdsKIMNBOgy9iLP/U80DR758X/DfGNguma/Y+o+CId7N
	 5d/QgAGxJ+grg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65FF5C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 01:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167124188740.29869.13664898767887933268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 466ade25f6828d0b196eebeffb761ed9f90052790c38d600b09807574f40fa1a
Date: Sat, 17 Dec 2022 01:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671241887
