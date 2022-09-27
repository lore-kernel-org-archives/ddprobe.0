Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBBDB362
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 22:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E30BC433D6
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 22:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664318453;
	bh=/0tOQbbeLFHjVVB3nl1vKHNrEqsD/REWNuKYC9mgANQ=;
	h=To:Subject:From:Date:From;
	b=O/4Vgc7QcI/cVk8QaOIhj0x3ImHWP7Z74iw4RUV3oDrSsYE9wSJWqaxcUVBgNdrHJ
	 lEf3RTDkB3RlMKmFrHd5jU/jz3+PAD0sH3MLUnuWni332bduhffGZEsKGkfry3dytR
	 9krgA2t0S7CC5zVBQymBFSPi2n++ihgnY0PVHTxri9QBE9eEFeayXuLni5pF6jGJRG
	 z9BZ9ka399B+F4N9wC50eO7YbIvC3UKFtVb0vX6sAyVn8+qfd2W0HLpQclS0Bm5rTL
	 ZPK8rtNaAusrmdHPOhXgWi7uhg3YanRIa5+YuK5qmL1XKJ4DEOFhvLW9gRlyHozcUH
	 S/1Osf/4clAew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52B94C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 22:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166431845333.3495.10442670231053951047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdeaaa37dd35b461757ccd92b6140885463ee46d8a6a33c5cd8a5f90c1e6c17e
Date: Tue, 27 Sep 2022 22:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664318453
