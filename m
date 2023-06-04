Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DA5C17C8
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 01:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3DF7C433D2
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 01:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685843886;
	bh=74d0pLo4nzPCdExvfEA5tx9KQbzGVAOtBbY1YTEOmUk=;
	h=To:Subject:From:Date:From;
	b=tJKViK7T6MR3gDdxWM7ul/fLR6P51UityKVa8uZPSjolJGRCW5j8dGxnqrOoGElsO
	 yLkneXd0sz+hfDPAeN0QukXg/m/FjNbuz1FfBh5Lx5urW8F1WQm3vVx0JIkQu+zXf/
	 CPzpM1y/IIC78Jc1KzISTPUUPMpGOHeRX8U+8tsi+8OmdompFENUx225NQrM39cmst
	 F69ndpVtbjfKiv8T8WKpVBf4nksbT0p7RRAfmhBoCSi2uhVTyGo+ErPNv+ZWz/ajXB
	 r0MN5BRrBFQN80zSvoR4p2mAnmEgzdF+xnpGXWAeNVPlXpVztK4yXWKK1NIeGQ3K5b
	 Pg2OoLRPrA8vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6CDFC77B73
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 01:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168584388576.2782.17860466611296999816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9047e8b17616ee5746739dab69e5dc426a9b3023730d01e437f598dd6b65cfe9
Date: Sun, 04 Jun 2023 01:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685843885
