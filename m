Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA3C523A7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 05:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FE93C433EF
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 05:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674021087;
	bh=taBHQeWJQtiz5RdkRo9Ux3Cr9HpkwPxQYUzuwh3M6V4=;
	h=To:Subject:From:Date:From;
	b=f9zznqdXzUL1Ud/qgEWnwypsyvHT1vedc88GLNYd8WYpNP7APCstUPtmRo1uo54Vu
	 2X560QieZUqWDhQXqbxRxui1zUJgyoKUQVMSlil0qgMQ0SpkAPDESuF/prgq1GeKZj
	 kXBRtlmgZJkWK6UMm1pCtDqVHfIUc5fLAW5e6oIMvwXxhykkij/eGqhLzGzbHhmLYb
	 5eSsyMpXwQWf9qGEyWxpCT14vFMeRfed7UEjLukJbhOrT1563JADxBkH3re2bv1PtF
	 odOMqSyjbGCZ7m8R951Hh+zkHXZSsYMEuxt2j0CG1+nAkAtFLALKMxBd9VBQFQDm/7
	 HHXHunqrgyoBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B32AC004D4
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 05:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167402108743.8653.4607311957516191801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa513a723823b04e1f28c2fe31c2b2fe11dbf7d0d262ed06f410b6da7148b1d8
Date: Wed, 18 Jan 2023 05:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674021087
