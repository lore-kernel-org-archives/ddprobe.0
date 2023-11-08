Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A19C32C92
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 18:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XnnywVzJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FBB0C433C8
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 18:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699467496;
	bh=t3zPsQyYsIkUFubPwJIlkpWz+R5nuUaCD3BCSm9vY78=;
	h=To:Subject:From:Date:From;
	b=XnnywVzJErtPuU5WthtoAlDUUzM0hirj50rTtU+35sXHwJaEBleNd7uSxcZCYJQZI
	 F7bMv0sH/UytG5thLnDg2KQ66oNQWN0uGAooVGE9wekiT/PJEnNKV8o+kuHGbTB7Jg
	 BNGbV2UhIhPBswBgEIdEf67g9p64g9aGmEXpHqEyLYZpmVp+ptGes1L7eyrWmtrpKV
	 ObgqLLqq3hP/6B/iN6ZAVAnIQXCyy07R5Gpnv9hSVUVhkQb2YjtRIPcTT7AoTYQgRL
	 nuMOlEfYApNIVJ25yoNzOwXC2p3G4z49KHIYdx6YBj2gUtC3rgk8GunnEHCd0JCrb3
	 lti+ZqC74Je8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 666EAC4332F
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 18:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169946749641.29644.13330726777293171544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5506d5030d3a3017aea1990125ad898e0a43077dc632f67a1a72a44b5476a77c
Date: Wed, 08 Nov 2023 18:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699467496
