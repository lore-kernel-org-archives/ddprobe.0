Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AFDA12B97
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 10:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ethArOZV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F487C433C7
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 10:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704625096;
	bh=33je7GDOJSUKOekAmeDaB/AFsZXVr239VjLveiGsZIk=;
	h=To:Subject:From:Date:From;
	b=ethArOZVSBPNcftHKAAaI6+E2dQlD5kX9wT3YQO3MgTqKnrqlN7JGFjeNKf6facTF
	 UsUHqd4iAZeUWxJYgCVW5TvYxuXFNydPAQrUK7d5riKPedxtd4shcexOdwkPbnOiWt
	 qKqJQoo6Ntfbq5EnYPgAInZa11JT3GORdwzI+xMjOgywB1zvU7hMBLS+72DOmWLkv0
	 YZLIbaFy7aHkB47fIVxoD7WZ3qCDJpo5bOmwFX54Ux8HhpYgU/1A0zFPguXA5UYCOF
	 201adnhR9D7bF/AQdlWfmQJH/goNCF/XiNwnbmPSy1x5FDqERkmbb/KDB6u2dTWysC
	 +IoKo6sQi8agA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 706DFC47073
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 10:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170462509641.6571.1598400307393483366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71995356f437aa00609474c9989e03c683fddac67b2262362de6c633170f4661
Date: Sun, 07 Jan 2024 10:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704625096
