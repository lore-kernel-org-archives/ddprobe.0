Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B081636D
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 06:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A870C433D6
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665727253;
	bh=5A+qCzC71/cW9h2uMXbQOw7Uy3PoTTvbcnUiB9G51kA=;
	h=To:Subject:From:Date:From;
	b=GALts4wgYh6Yu2m7o2zATN4/tDo0TomcBjHCTzzswGtJt+Jd5CmllivI+NSmFKNHk
	 7MNOXBDe3ZcEkNPmzYsajQIV6OBy0tsUGNhFXEVJPdeuXAYbcShr6A2k4SWDWVUEDA
	 roslwaznexynsL7GBCIKe21bl1YOcl+/wkMlujrQNkiOUs53K3+WPw1MKCL/6EJYNO
	 +5K5NwXpqR+rwvhO2WyLoMOP9E1oJd/+cBDJ+NKMCQXhCSF6C1+e9pmetF+DNIPeVg
	 1QfAicIEirbM1wxB9CNkmgTVUsjXkebdHq3m47dtJa8JhSnpKtEWsZE0cu8ZDVpq3f
	 8gsZC9Z7RBtrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 529EAC433FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 06:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166572725333.9851.6200263159092411319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9817e2aa83ac2d64d56e224f7439135639d61bb0ddbde9420c66c8094a10ba6b
Date: Fri, 14 Oct 2022 06:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665727253
