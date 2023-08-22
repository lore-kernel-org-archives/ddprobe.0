Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6501DEA8
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 06:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D16AEC433C7
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 06:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692687248;
	bh=zKNZBGtEPT7xo6pVG1Hp4p37hqBcJ17kmnGnOWGgoIw=;
	h=To:Subject:From:Date:From;
	b=Hop+Ds++NMDDlHVarfQ9vrwT97TZIqYufACPIYC5kPkIYUjP00zqZl2uX6yc+Zn9D
	 FaUu5P3LvLm85YiMzYk6UblXuQwaqF916fn/kTfVbnkgSeVQvK98MS6vCcmdJjPPI5
	 IbAlNVtLZwfoDxwl+apnk51xBTjiTlyvO4AgJGqCR1gQsfd01w12tfI5gvh0xbGmWb
	 HQc9mmQBOkoB62sAA/fXZ/dFcJYlMW31bNgjv2UKC05njanFdSqCcEKsk1f0qmDlkQ
	 B+AE0Rkx0uPrUJPB8Mpw4xqURw7eGSXV2MYxPfVpj0/OVkClNFMfmM/HdXxo9EWhD7
	 kZI22BdtZHQVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13B9EE49A5
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 06:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169268724871.27347.7802499262593720383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 441057f82c50cc6467ba417a61e095f0efe6b0df404439fd627d3771efee4bbf
Date: Tue, 22 Aug 2023 06:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692687248
