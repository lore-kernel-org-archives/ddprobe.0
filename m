Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD0E364
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 05:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD24DC433EF
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 05:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677387905;
	bh=7feX/x3yqIkqca/SUfPgpUI/EOAsHCEal5LJQFz7KVA=;
	h=To:Subject:From:Date:From;
	b=PIIvFU02KjejO8Cha8qMA9aCIOY6rYXw6MQ/QbC0bgm8z1BcvTfWDmExxPGMeEZ5k
	 BBv77JNCbafAN8Yxv+cZj86HGGlvUwN2wHU2tjtobyNx3H/4YgeK44+tt4bhYRindu
	 IXLdOZRXJtTQu+kSSmKRc5K1j8rj7PCJeO5w1wMRLb8vjBaqS/KHERw8uxCWSYhJIi
	 1gFGubItrp2eLebT4zusJRuyjC5jayvxDLczDSLhNsOs5leMGEAx6P1DtTsTtP1fcZ
	 9ANWOEI+T0e5iShhbN9kK791S5IYPzF/0O768m5zyHg8z8/jSybVxTMfmiikGuJOKa
	 cjeXMJi75EeLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6050C64ED6
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 05:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167738790573.26312.3753385748935628881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 026b3c5542448661ee3526b1e27e02e390b16ac6a41b9045697e17730f98bb7d
Date: Sun, 26 Feb 2023 05:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677387905
