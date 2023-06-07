Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BA2A139F
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 13:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F30C4339B
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 13:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686143525;
	bh=ES4FKPAINt2xNIuR8OZmH/8HH0Y6iRFACWeo+/3Q/58=;
	h=To:Subject:From:Date:From;
	b=vMJUphMh5QzMeryeKquQYzCZL5IbiSmKawXIwtUQe3rpQPqTGR7yQSkw3kmczVnRO
	 PwCnRPyk5LPQGp7bczSXVJ5lMa/rWIwkDlQ9OFJEvAcTrMUlXBcMBTUaFUPL0w9h2t
	 jWyOei/PhTXTXDg+HU2+dyv6Kr8XGSAMLvQ1ISSojhjYn2MxYr/B+qmqAat52dgJB7
	 fCCFaG9zq1KOJLGZIGCDcVy68KDaisqZop6wiHKi0AmUfr0hR1QuBl5IUirh0h0HQr
	 JlXkyM2AFV6RYDyyLQrQqLb4o7Y97f9+WaClueneCQKnXQoS5WR7+AfOBhZ2KdEqtL
	 Np2nfTAmXVWtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8609C77B7A
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 13:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168614352574.14756.5806657615141347514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b72fb75aa3c01ce0a985639a019bf13b0dcb8d7c0314655155529a6fe351b913
Date: Wed, 07 Jun 2023 13:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686143525
