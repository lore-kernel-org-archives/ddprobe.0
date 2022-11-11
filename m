Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B91E728FA
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 20:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B55DC433C1
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 20:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668199254;
	bh=L19TafwBqdQUeSJZ41VauOob4USIu0+hO+4n6gsNo/w=;
	h=To:Subject:From:Date:From;
	b=kZy8cEaMZ3OJ/tdZvOq/lemaq+1V5czPaa2bT9fnLMbDbg+YNwlLA4z9Vywoyo6+o
	 CYuEvKwSOMPx5yH4bVAf3Wtr/9fTqPuf0FrcCSUgnnN2jj92DzBDGmof3Dp0X7Vbh3
	 emw5I675chx9jPYeWM19czh4ZsChu5vq5gHR+9BQYsKAvXv3ANKX7SX0qTIV2ayIpz
	 3zXSHTMPu8inp/P62bi3P58LjYPAQWA7lSrJ6pYqlbvk5Is6obVe5Mz9/kn3V3D4AJ
	 cO+pyn7fCeHukxxGO91ZfZM4ZS/KISURA+rKbGWvnY3/Iu0CJ8oVa7ITRxzDahadSN
	 RVHYsSe22gxqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55DE4C433FE
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 20:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166819925434.19422.672317578986174203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4697c4bb7ce0745bfa128c42e0f5b9bd1e55f5291bc16f24f09e739404133125
Date: Fri, 11 Nov 2022 20:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668199254
