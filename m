Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C46A10E3
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 01:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF6E1C433C7
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 01:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693533248;
	bh=Z9N3VWIrLaCJ7EL0XJXSo9hrIgMX8mN15x+5W6IB/Yw=;
	h=To:Subject:From:Date:From;
	b=LDxleRN/SZc+O4J2pOZamUHuddEO7ZsAAzI/Vzbt8WqBerIzgo4PRqNCnOTMHC0NG
	 MC+iO/D9M0tb6K0/N5+mLschQQk48U5c8+ToA8eXnwY0oiqK7j3qmhCVPJ0+XYJCzT
	 EBoaFCttASMdm7QmKzIEy9yNlvsb3vOS4H5SkeBNnUvdJGyTpaAQ14A9n+QzMMO7QQ
	 8U5KN+p9mLzIo8/jbXdI333moiHvOx5eokZB46XTX9I5Bu3ghBQQLBagBGf4t3feni
	 wrvW9c8P6NfsjCbL+KJ9lfBIkNhzNNdZfE4FKdl8THQiV3sM9VV3DzGdAtBaKUkdDr
	 eJeOWNZ2+O86Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD545CA0FE3
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 01:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169353324868.31722.13356613553381209717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a076099784cb6f6464cc747fbfbcf2c3180dba60d8bc41f4b10b6db00469070b
Date: Fri, 01 Sep 2023 01:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693533248
