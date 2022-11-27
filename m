Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D14FB33C4
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 16:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71AD1C433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 16:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669565454;
	bh=Jrp4BWXZCALHsT8CC9Mmrwt3z3X8uHajYMhVccWpRec=;
	h=To:Subject:From:Date:From;
	b=XaoLozW8S4P/3frzcBjsgKB9URLPRh0fLLThE/83nhl2Lubp9sci1vA30a0W8p5rv
	 SZBKp6FxywWUth3ijM1LaIp+js8n3NJ/lddNiLD1wOlp0/H5l7rgl8RmjeLXwLzhpi
	 jZiK5P9IQaMDvGTIwRp7QFVqIOtTJB3xGQqbHH4bcaKrqbZiDEx6aqN5nqZlxncewq
	 tT9dLykaNcbxhGxNP6JoCLeBp8yWjwcOzmmPgtVFCosUjZ/fzkM5wkrAEEPovBUF+V
	 CII23dIRKZXPUwvIwATm2fhjueb/3K0IcW0RKIeDZY9AGpDAgnPorLmsFhuKajFg3t
	 3+9yo7IuPmcKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55FFDC43217
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 16:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166956545432.20199.17973601433668586059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89c7231f90b6dd59334ce4dbe5bba938b11e44bfa3338cf625719cccc5eebfaa
Date: Sun, 27 Nov 2022 16:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669565454
