Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E03FA6FBB
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 23:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82765C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 23:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670714487;
	bh=MuGuB4P0Equ/SzpN4FXzhUxUw0yOl1r2eFf2Vi3faug=;
	h=To:Subject:From:Date:From;
	b=i05ABk4WxA6JezlnO06FeAy51Nl93aNaP6mEByHFDy7bXayD4Xtj0LH3JJR9LYVxm
	 hGz5C3GqXTfs32zf4yIBQ7qne7niEdo2XinyjvtcegBVdx4dIW2Qj7Gk2SXMNHGXTo
	 ogIKT5elD2ZVkD13ErLQm6IjX5unxl3RRJPcYiZggqt8MICavsSUywAdhCKOfG0w2g
	 y4FBgkDCQEhozNP+TWDih7bUrh6WsjjkH0g2IYNR7NM3b/bJkORDZrkL2ApdAsdPqX
	 uUQTCUKnV9fQELoZOO0bqC+mqWu/R6aJkVvlt3TnjdWZYwk0vNn4Q8KXFDLMn9CZJe
	 S6y8TKdy6RkIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65D6AC4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 23:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167071448739.4522.14987373605342479476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24f376c25802e5369d902384489bd42f4e4d5060401ab7a5ef3943dc03907e90
Date: Sat, 10 Dec 2022 23:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670714487
