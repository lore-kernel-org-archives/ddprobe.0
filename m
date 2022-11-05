Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE3801FBE
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 18:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87EF9C433C1
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 18:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667673654;
	bh=cYeJB9I92PxSCuSFXTc0fAobQ4RQsR2nYccQvjEmEjg=;
	h=To:Subject:From:Date:From;
	b=VkUhZpLvQwzoachHIl0sAvopdbvqJW4Okf597bwVlSYIyWuPGh7wSG+syKSd9poJH
	 Wr18UQBbn72z7R+kUsPR/i7EGnGxVMkQk8vpYXLGZnFsbmg1M27qWeuMT/lc2iDEmh
	 RdoccQ/Ijlf5RetLEbjEZucV4FMODoQzQTCL/IQxhvo2FVtdII6JagHQFEONq3iWpA
	 g0egroB4fnfaA55kU6Crj3X7O+jK5LV/JDU16tFBVUlmglGa1VLeG+/WCvcZYqfhKB
	 nKZN/8ym7q7aUHCkfKMxNIcLKLDxAmaz9X8kWDo2UHf218EcL0kl533jgeG9OnAIAa
	 BxUkx1u4A94cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62F4AC4332F
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 18:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166767365436.13851.2767684731736320073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c445bbd360ad5602a43ae30ba114fc4d007672382ae9c2fb49a669de00f414ca
Date: Sat, 05 Nov 2022 18:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667673654
