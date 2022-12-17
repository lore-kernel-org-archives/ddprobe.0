Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4B84A48
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 12:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E258C433EF
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 12:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671278487;
	bh=hcipK3r+eclbmESySsQq2qJIDySsJK7oMOjaxAeTVWE=;
	h=To:Subject:From:Date:From;
	b=uq0qXjOtqkb7wPsspGQsmkTURjwAMM116gV2PG4UdQWHab7tGDQRbDA19hZSPb8NE
	 PmqpZxoStA5Vr30kTIi4pOmFcfV+DpvjB+9tVkcQNcarAh+AavlQAI17Gmi99OhVhh
	 XjnmD0J5aoQSTwR7SeIbqs1xnKdk9ko7NmfS/ZM9nu1hNJpK5vB2ECFOebm+MnVxb2
	 xp+FH5k6NiwrfE5F8XhSoOwHAzNXdAWUx0sOdWCDUgEkLNr0MBLdh7ukleQSl97vUV
	 RFQ+fSLo4cxI7dkFuWk/ZCIbexvRCOgh1acjDCKh3Mimus3+jGkHfpYaZf92yCm9Nq
	 PUQyQKFFv+IYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D94EC4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 12:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167127848743.26341.12033001059192817091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe03be97334ba4189ca6549d22be52ca36f3a07c4763201459a0e08111cc9da1
Date: Sat, 17 Dec 2022 12:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671278487
