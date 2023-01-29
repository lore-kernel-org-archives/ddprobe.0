Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2BD19B
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 14:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8A97C433D2
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 14:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675003385;
	bh=z5Tomcr8FZloiW0jjnQVCcb1aCiBmDKHsnBgwPXPl4c=;
	h=To:Subject:From:Date:From;
	b=FYkcD6xUe4zL2wCYdxZuZcqmJ0k+zcxfmH54pmE3wGQY5BGhQaAU32vMXWrNIbZud
	 8E+8mkgoBNUO1sCBCpMLlCe2VMpZz7dITyL1jFYj2NL5F1lVx0mBwlFH937fnvbM68
	 gdav4bL9AEbBhEZuN0BSiFHlxNI2NPvp66YI+OfYlZiAeCGisbc45pvEe13GlHs0qR
	 QYyHdzrjK2PVVT1PSEbmY/fZrZkCU10S4R4exQgSrerQUZLqjKu8ho2esU/F1aqTRX
	 cSmuxjF3eJwg9QP7YGHhy1Qs8voUyCmyuOAmFdjRIUOdMM5vykhwwqa1E6qm56fnUc
	 BSzotzaNTW86g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6799C05027
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 14:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167500338574.19780.10675343329351176461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7043fcef287c5d5617ab00bd6a96f39d0ef33b1e40daffca109b74856ab64e37
Date: Sun, 29 Jan 2023 14:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675003385
