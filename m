Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5C8D530
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 15:32:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4F28C433C8
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 15:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690212728;
	bh=sWBOwzBqp9qFSBnueRkijjGFV6ycRLV6wvfFyqRwj5s=;
	h=To:Subject:From:Date:From;
	b=RCPsae9hDX5WCv4s3Bmk+r7o077UytXA+ijNvgegUex5VRloAq8zBhdaO+OVXTnkD
	 uccZj9c/VGoh/OxpLIxTvKeaNyTPblsMlUdoiZZHwQlf627e+tDCUMj8Carudg72er
	 DpgUoFvg3WWa36dbCey34b6XbetTF3XbbRLJwjBKRYx/r1Pu/OhvUWWUKXJzDpEPEU
	 eTDzSiSp43mrERMT9vsTmnDDV8gDhn4iKMskbwEGt1tRf5rEIaqocGUNCHaz4oOvqq
	 P9Dw/83TIM/uuZpd0f3GgE6RrgRCimtKA943EovUPrLbPankxd4u1dXlYJrCuTVsx+
	 Vedyro6Svao3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7C94C001DF
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 15:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169021272868.30275.4556361783230030584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64d85a274e9f14827351bebf0232742bbc143fcfb00ee10c3061de15186cbd77
Date: Mon, 24 Jul 2023 15:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690212728
