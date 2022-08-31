Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1F3C4A2B
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 18:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CA6EC433D7
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661968853;
	bh=FX/cs32s+nvlWiOiaMeSIyX4U2FP1jt357Y5okSn0WY=;
	h=To:Subject:From:Date:From;
	b=jrrlPhJClcMep45fZZu5Uclsrj9t/7xfy/e6SdQpJMb+gErEu7InIr5wKUimx+jx2
	 KA5nzzL5BkY4lgioKKAy6S5vwxoN0MoIOPKtPgrZAmN7x4jKB3/3sxR2/KzssRUge5
	 uORLTNCiCJiudBw3lrPEq4iw7DEXQLFK3qN9MykUoDbLqgSuXYZgmwxZOxb/ZqR+P+
	 v8jCSXHWpvEqAnZLozFjd0Y9n9y5uyt7qm+8MMdWVNdowBLEsNFbyd6gKAeCvhu0QB
	 A8Jp+mW25EMJyph46147Evcf3zUVIQ1lMmsm5bEhqcmczcruM8Ka6eNz2MPzH1BABJ
	 34DJoKdA/UkxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56071ECAAD3
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 18:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166196885334.8318.11802882341147812673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c6893e241c58e7469cdf119a084bf68a70b6e53ba24b73f414a1b42cbaef894
Date: Wed, 31 Aug 2022 18:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661968853
