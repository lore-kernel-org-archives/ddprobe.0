Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C8D3214
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 17:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D86B7C433D2
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 17:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682356925;
	bh=j/cJpc6XhwmastzOOtZFtg7UoyQlLnudrVl86aFyraI=;
	h=To:Subject:From:Date:From;
	b=kYWdHKmUdEDXDOBSrrjLvlQzBOxLFcYL9DIbpoLH5HU4CgycQmXbUvdCnkt7iwupO
	 +my7UgeeVwljx8mnsDwai+FG9sBqoOG/kF0lltPifliAiTfHgiiNy773G3+TplN41R
	 LnSJfizxpH0uQxcA6dEOdkCdIZuDp66QmtHLhY9+FAXMHXL3Ahw7Thzhbo8cUerAtQ
	 rY7HxlqV1sukuOE9kuA2f+CRFGcvJUeCPO39a6hR8Kige1q9NeWEFKlfxy2BPZWoUU
	 XA0Dml6tZaZHzBox7xPtpx09TtHhbXC300bOnEKSNb/aoXEEikWymA31ALx4sBRpZC
	 iF/mzzD/UCeVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA017C7618E
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 17:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168235692575.3588.7864267782872696396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ededc2da2cd715072eaaaa0e2359f3abc8bcda79cf18b893e5dbd83e42ded07c
Date: Mon, 24 Apr 2023 17:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682356925
