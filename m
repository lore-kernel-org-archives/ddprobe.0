Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A191366
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 05:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBED8C433EF
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 05:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685252345;
	bh=KgGFe2hCB6peIV1HxfmLGcRWmxER7Exceo1xTNLTd6Y=;
	h=To:Subject:From:Date:From;
	b=K8NAS7mDCp9SWhImiSty9jcaGJYWIgHqJnShJ7o9vvUAfu9VlQsvrYZm0WGf7yisP
	 RdVazFIyP5gOOGnQFep2YbrcziUA4512kKClyxnbJe58ZiVyiyVlQoPF8u4Mc2azaL
	 uzkJWVXU0SFSUYp5vDTYvqD68/H2sp5jJJWllc1YJxgqLJhogQ7/hCkktCjXSx90nk
	 VT4vEsESJnkqbDkQj+yagbBj9B2ZjJGdWN35i+4mtHj5RJvz3Fh8RSLNhhTe5uvG9O
	 Lf0pVzAUpKjSqqB7g49yF0LIi3E4OOGwW8PTTbIsBlAr8LCRvn8yul0azMjDZF22Bg
	 5zLxoLzL21QsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD80FC77B7C
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 05:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168525234575.25958.5038404525931728110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cbb5c631e09e433cb5ea28bf83beaaa91d49d17872227a43e423351d9810974
Date: Sun, 28 May 2023 05:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685252345
