Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73BBA15AA
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 14:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBAFDC433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 14:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686322566;
	bh=eEdjVhH3u8/QUd61n6qgNln+wwX3OL2V+D2+pxX31WI=;
	h=To:Subject:From:Date:From;
	b=p17vju9dUuhweg9h5j+oLhFTLaCywPRQUBkQk9LjHw5gL6tB9Uim8b/isLRQWWH9V
	 n1Gtz+oUs6zHkkRT3N0EZi721gTXFeBhXibKc/I80CRAPV5MJOoNrWMifMevPgGy8k
	 aZNnLzf5f9/g/ZKmOT94qoe5+Sedg9jC7ELp72bt/Go+3bLlFpqSThxLMHYDnsPKml
	 Jb5MlK/VSqbUHSFO2t367FEm6bx0Tg54Hzb65pxjIW+jARPG01NTJds3N0wi3InIuf
	 ws2MwRIWvzAi6PnSN1nfPwRgWlA5bnWrbzPKiiz70Ip9GFbysN5BH7hW0JhlcnyLZl
	 JWfie05fvGdoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C93D9C7EE29
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 14:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168632256581.9626.8461278904791257615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86d089aed4394ba3c6640a290f5252e53fe000d13e0dd50c96ebc44cf1e33b48
Date: Fri, 09 Jun 2023 14:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686322565
