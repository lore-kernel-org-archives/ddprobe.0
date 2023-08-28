Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 860B1634
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 04:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0B277C433C7
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 04:34:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693197249;
	bh=h3zMaCFxS3tWkGf3J0lWfB4C0mMzld4+jCPDfYIqNfM=;
	h=To:Subject:From:Date:From;
	b=IapQwvSjTD54sss+oVQMfpNS286KL1jRKQGoKDy95l1i5FPooC1Un/+AjaQlFgOJc
	 zkqIFqICGV0647t561wMBBoVB7jJ5syuxQXJkvPe3AGMT5Ey+yduXaQeB00PBuucnB
	 duMxXzOHwqfpcLxyfOhPGEWwKGlqFKY8h6FLo1xzzgLTSdXq2/JTm0yIRnANTRNRb/
	 fQCWITIKjrNx+YMt/L0VC7mH12FjOQlRGUIiVvAK2CAcQAskMoUCrs2wO8NEtFg3S5
	 sYhZWBBoYG/Fxf1G7QK5A6bOrnOYILqAZ6rbK4NPGGhryE3jwgp3FKJMfDbpv9Z+LN
	 P/gafOSJttEQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC8A4C71153
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 04:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169319724881.22936.14224154359784954112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16b8ab05a5c03f6fe807e0b2bedfc47ef92b4b7bca951e077a9877ffef506798
Date: Mon, 28 Aug 2023 04:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693197248
