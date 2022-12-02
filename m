Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC064187E
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 08:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C672C433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 08:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669969254;
	bh=p9o/Q4kt2A9NVTuFhZMS9zryyb4zxjeDF3SvsCwwILc=;
	h=To:Subject:From:Date:From;
	b=CNsQHPoUB8NIo8sSmH0JBLm3IUsoBKrIcRKWoR+1icTdEodXeFMHnid66d8PVQkpZ
	 EMAjZL5Dfb36eAdCiqAxMR+WAQ1s/xtxWIhFE4rCb6oecnCYPCK99ZdvD8tf4k/0R4
	 pdSY9A/FfKqKfhQMXtXujfIfRcoRok3dFaBkwSxh6dqYpCPi4zKdcdar39mnzFtVct
	 Ll/n4Yt1OFhW5BYarGDq8/dlwFX7P/7x/Kea4RvyfTsTYfQ/E42gTVjxzCQovJU9iE
	 vpdPe8P4uKF8zz3Xwjk8LlZiHwmnc7q/fc6A/SWiRRGXmOwVLsENvjSiOFilchv/QX
	 TE4QGiaMtj98w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52401C4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 08:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166996925432.25405.4586745180051618798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91adf25ad691ae57c8175040e0f5bb61c9da314831b7095a3ce0b8826af23ea2
Date: Fri, 02 Dec 2022 08:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669969254
