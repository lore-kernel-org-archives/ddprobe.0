Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF22179C0
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 19:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94D26C433D6
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 19:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669836654;
	bh=n78ln3EKSOMC2pYvDhW1yNLi8ZYkXMFx7186oV/sT4Q=;
	h=To:Subject:From:Date:From;
	b=Ej/hLk6Ae9pL5bKk5izE/UsZHx3mFPvZmgCa49NT24K68mzlaqZerVOM1EHet/1yr
	 dHpF05um0hhHMIkSEeEoByCOqmQYjqEBxrUMQVamJb/41Wn3x1ZOlMu1ZOSioqO2ba
	 2nTPf5DTujrZV5z50kl9IbWFli20bSJtgZFYDNyACZQehnWLvXO23YT2VTeR+LTCIi
	 zxmkE0bJd+fRUIVHGzn+HEB+l8H6CWIi+jwC7nrpqjn7aQmaIpJmbmH2qtm2VuxDpG
	 6rOHXU7vIICtWjlNGz/edZs4k229Qk+5ff5LGsl4j+3AtFtIyWujRDl6NTvVe0UhVH
	 x2789zhJ3TOoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7537AC4321E
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 19:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166983665446.3378.4603237616690122639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc24095c7bb973b92a9e351281b7bba461e6bcd7e600a81848e8fe34e6271dde
Date: Wed, 30 Nov 2022 19:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669836654
