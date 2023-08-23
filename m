Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ADFEBA45
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 14:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C513EC433C7
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 14:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692801848;
	bh=cj0A9KWb0/SFCiRAy+WdRF2kzEDHQbcPY2TsTwgjnyg=;
	h=To:Subject:From:Date:From;
	b=QiICPSoshUhVUgiuMwX6yp7T5WyrpgDKp7LoM3P/iLPnpSRm4BnTHl0dBVO2QSq2L
	 yOat6iSdpbE2LJge+D+721uXKa1xX1vB0pxM9iJ5w2Tjlb1A9wchVUtyYSI5MZAKrt
	 gUzH0NIlfmZPOL8pMfzhkRjwOgo7LrmHvCZrZvMzduLUqDMQUEE+qnQeaSwHIarjEU
	 /lq+hnrRV/1tzFUecXvHzQ05PR2VY6BsepW6OIGbtyy74QEEG+9Z5mcHewdxC8STdu
	 cprfHy94j0mT1m5+SiuA0U2kz2v3oHFKVERKcz1BR22RIbI5oqaJpp3yuITY2+wAEL
	 wzLXvSjg3qk3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC985EE49A0
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 14:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169280184869.2982.12905631906101584453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87539949d407e8c099618e4c4fe94aaa79993c6db59f766b1b963fe1a49b643e
Date: Wed, 23 Aug 2023 14:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692801848
