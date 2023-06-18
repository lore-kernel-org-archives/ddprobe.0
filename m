Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E86AA941
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 10:30:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C443CC433C0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 10:30:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687084208;
	bh=8A0Efesjwq+8uiPu2nDqf/C550SA5/UR7Ce0xffwXqI=;
	h=To:Subject:From:Date:From;
	b=eQkR4So0edv22nySKM2kMD1EgUVpQwOAhvuJAY6tcPJzKx1ipkkK8KrZXLNmJGnSr
	 wwjL1Uqf6sV83/SmgdAtUnSDCKc21tGMi1rVR5blxQ1wm5ZTjVa2NCinsLhB+LrWrs
	 ZiAmfMdyIaLb6p2u1PnLhUP750ZnbfW/OG+Wz1eH4vvzj8y++hWMM76y9gDprYnAA/
	 qqQfvmKKzjQLcKeOP9OZQsAfqOj2lk21W3l6tldAw0ZuHZ/Ybmijtf6z3+h3wOk/uY
	 YPHAN+55Hz/WLAOxoNOJFu8BhwAIyqKUDgOC+E2siP+BVLAYoQV+cRF3JRp+L73jev
	 UvaavvqYjBbdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B6DEB64D7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 10:30:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168708420868.18996.15424784336402619636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d675fcea49cdcbe246c33244afb4f6c7196e30676bc5a1797f15fc26446aa80f
Date: Sun, 18 Jun 2023 10:30:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687084208
