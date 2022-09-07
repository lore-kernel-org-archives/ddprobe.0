Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C47917E
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 06:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74432C433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662533453;
	bh=2iyGsiE0bnQNIkpbIUruoS4e0zZeZ5Doct3z93tPZUI=;
	h=To:Subject:From:Date:From;
	b=rtVUIJhqF3sU2y4yQvF00hMNVba4NPXH+A2RXwuW9wKy/BXjBeUPxGmn5rr050X+S
	 Iy0owVFov2X6C6w4oD4S7J67R8XXEw6mHRF6YmahYN6yqv01T3cWas8I8Hga6YcvJf
	 /ilL3azdBholfvonyBid2vtdEzTd0SSfTx24FZCnQnuvgee47hArjV7rnjs0vTepNj
	 Asb+VwBDBClDiz+fJEL2X1pyyAn3oh2SRnXdu9kNjoFi8qik90PUhwWvZ8IK91M6zJ
	 CMNn5aDeUMvbaDiXLJEgKgDbtL7JzdOW+S25fJPOomfoHEwpxWK6bXCxRC3A1j2GfQ
	 bADi++nO+mhmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54C87C38145
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 06:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166253345333.16321.2076249395806051200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89323bd85609947ed26721842c7486c4ac70fe62c87cc75041ce76f6d21ea53d
Date: Wed, 07 Sep 2022 06:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662533453
