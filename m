Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 648E52F26
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 22:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC086C433C7
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 22:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691360588;
	bh=BjNImqmOQRSDKjoemACA/g/o00aWdY8sduHEn/rtxVI=;
	h=To:Subject:From:Date:From;
	b=s5O9SuQVxhdL1ZE3bwQbrdeDhLIcAxZDEAwtN+B3HMPuU33YuvCtQr7VtEhN4lkHu
	 +a7GX0y7UDyQlI439ysqCfqoRPQRO9HYIvN9V1dEvys+shx4SMCLD3990R0b83vNxG
	 zfTCQsoNFfwrkCsVgCU5fIh3ftdwXQGRBzkP+jlOlbBHIjs+kvfy23ZuvBvbuqL0he
	 BCLsrg6SvBCbNjzjS+eQk+YSxdvmM6vNxCxQSSyBux37SGl3vDTfDLWwA9uNuVCVaN
	 BIF1K/x5WpauXGVVmo5Y84eSY5loXnBT2EBnywpu2PiSV7uwfiN3AQXAkFbuDRSnmL
	 TT1UqVLg4LoLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABBEBC0015E
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 22:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169136058868.12671.6737324083702989541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0be55071f359382e0db0ea4a3c592d84200751a033694d013b04a346b9df63f
Date: Sun, 06 Aug 2023 22:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691360588
