Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22FD32586
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 11:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D58BEC433EF
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 11:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677064265;
	bh=BuGPHDdvxeZJTQxt08e/PsYTR2nTuwBTRB4spaIpOeE=;
	h=To:Subject:From:Date:From;
	b=j3AsmJAHuas9oRpcnM2vny0lllaw/bonrnUoWPSI6QpNRvoTm7RFogRGDCU5oBu9I
	 dhxPu9r8aY2UxJsK6R+bbGiJ4kXFJ18yf70kkqygo1Et59FFlRkYaXbXbQA2pWaxJX
	 j8OG17EtuxSRfXVW9l/aywxeXHtme4fOk3AV3dSFmS7cPqUgxouPuIxP0M3Oh6nWWt
	 vYFI7idTH8vujA4yGfFh/p1lKQgFoQ8OY7GCOL9KXbpTkS5401E/LM//fo1bJ7HPlT
	 v/llR9rPAfOzywOH7/Nq6zEmh6uvNVngQNQg/PCUYbAKKKLgRxQV4mH5vcdT50ZXbB
	 F3/isjprS7qsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7BB8C61DA4
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 11:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167706426574.9491.11628608971809097755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a5da7358b8f19b2830b659f47642cf386aaa0b265cae4a00648aa681a88c250
Date: Wed, 22 Feb 2023 11:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677064265
