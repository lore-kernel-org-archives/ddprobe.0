Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58F2F2F30
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 16:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06B9CC433D2
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 16:06:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680105966;
	bh=4wOqqqyzzXf1xvyEQTHNKbyzCxOZRQf1aVZfLtmRopU=;
	h=To:Subject:From:Date:From;
	b=q28pMadhTq0f4DUj/FoKvgwh3mWZt1871uuSoxCR79K3n7zsXNgIof1XSi5CWlabn
	 6mCnnJ+CwiwvpXwN7bCq2exVXUE7I0Lovz4t0vdkfPx2lHUrE9tqbfxc7EnKloYKHd
	 gOBP8RDvkvt95t67/NpfeMCDnBcspHhDyDJbCqrOusHuijA1e02tFGQ3B/0ntDKHYA
	 rJF1cG8/gTVI/tIAuDUWXOV6a1UTOJggc67JmkwoHTPxPMiaWQA/nNQNSlpfGlcJWY
	 rGxS4aSr7qg4f/TBZEo4BOgVNd0ACgmO0+tdoqynNFnXBY1HCiVSswGOeFSi/hupvS
	 M1XcefCB7D9ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0090C74A5B
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 16:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168010596588.8152.7829434171765503754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ab1de3d0565d89e21b55a9a2132185e333ae22526ac147a845e492b8451e343
Date: Wed, 29 Mar 2023 16:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680105965
