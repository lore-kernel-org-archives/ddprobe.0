Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E49033CC
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 15:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEF71C433D2
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 15:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682177465;
	bh=0NPoKkBB0tVEkQHOMKIIoZXzl137weOHgp4eOztqdYU=;
	h=To:Subject:From:Date:From;
	b=eeJsTRxlSioxSrmIpPnIzfxSinj1vAmZFInP87/Vy0u5M9YJ2ZgTxaq/J1BZtoOUq
	 0S4Ed/TUpDmT+1GsyhqUJ122kfCduQPs5VUmYyla7fMbN7vAfztzyQHovLDyXskQqD
	 5qpcjnt84pXcNEgudouV9oDQczaYyxwCRRNlY0q0daMFL0rvmpv0sXUbOHbbtzEllt
	 EmOOLrFP52D0B3OkTVfihOtRJOrnwBUFaTGp/i6BnyXDHuFr6UksFy/HAZmahxnW1d
	 ZOpcAftDo1gArCj4qvzeF16FClt0qIf9vXWKmiuZKy/b9l7d8iiDQuKHrK98WTflYA
	 dUn/02gvgq+aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5084C6FD18
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 15:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168217746579.29607.10583002433011335647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 539828e4fff77397686b84729ba7baa427b37fbabe3b6ad129470528e8e2be0f
Date: Sat, 22 Apr 2023 15:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682177465
