Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A80F63C3
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 06:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9B2FC433EF
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 06:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685427725;
	bh=ZUNJWonYMb6WwFCToucREtxnfKPzyjGmIcaHL8aBI9A=;
	h=To:Subject:From:Date:From;
	b=siMC5kTabpZW6teXsL5HhFZBCLNTvuWnqhfKjnKXwtB5G8uPnBwwL24KTjnDi0FWV
	 Yi5ay01ZYvl1JYZilWzbVGWWrtWEV7Q4jo2yyYL2Ze3jwKyodB8T8P+Lq+IaIs8eGu
	 LiEnkwM6ZlD5F0r7bhTyKJjqmjkfm1PeXOusxWfM45CWCSHe4GLD38L8uiGgPLGOgx
	 AW2i6yv9JLiFwmfIy73Yz6NK2mV39XMncmpdvEOSOyMNpSm4ICR+40c07P2f/4LVxX
	 rSpgHjM9YeNpRJZmAJ81MbKmXdadSdZd9kMGWOSs+tXIldG59vv1+LYAP4+KrTm0lb
	 I8bOurI0g/FEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE97CC77B7A
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 06:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168542772575.29931.702152325641150893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1c949062e183ba5acb5a731d2fcd28facae7c81cbe83e9d695ac0f194091e1f
Date: Tue, 30 May 2023 06:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685427725
