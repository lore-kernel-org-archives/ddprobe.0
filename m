Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B54C17E4
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 16:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 701F7C433D6
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665160253;
	bh=VYcm7m6WIxTG/OcpeiemZf1bOc/bGU+OMTvNfbu18RU=;
	h=To:Subject:From:Date:From;
	b=WjqFoKmz4pTehK3/56PnCwFvEHOZee8Y0t3nG/pUyCHTw/zasKKJ8jtyRP9o5ZcYg
	 cH+gZMbjZpQhBlgOfEavhQy4VgDPJ8D7PtQoggkSzsuL9tG6cEdw9Fany/wo7oE0XT
	 /M8wzfLeVF1Ro1tjuGaDxyoA9aytnIeknTdv3DPtLRx0Ua0zEPCLk7GVQNIMyb+/7G
	 2oBM3yVUGv3A+r6XBxdUiyxOap7b017Pzk+AaipSb5KfLVjVF/i0SwBESDh9hXvM3B
	 O6Kwu1S1EFlyZNFYKqv//EOAtG27zW1HVHiAwBN2zeZU9RTFJpBZEijgLE40hrwPtD
	 eGotcmCO5IAjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58A88C433F5
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 16:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166516025335.30788.15503732937848251303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00843a1184ee727042e8bec38ec05112b7cfd69bf437e3546db0c8a46c071a2f
Date: Fri, 07 Oct 2022 16:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665160253
