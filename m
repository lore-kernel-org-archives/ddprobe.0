Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78E002AB54
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 13:39:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBE34C433C8
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 13:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689169149;
	bh=N1O0uJrIVkkGg/wdCq/OxUtFkYArOoBDXJwM3fQwMaQ=;
	h=To:Subject:From:Date:From;
	b=Jjo3WV7eNciwbAn2r8Mxq4BuL/OL/5r4OR4BC1MfA7efO5OQXLcS7k89OO5abkoUI
	 VSBUzjZDTQRQodq2P9h7eE21Au0ik+iKgnS7lQbpjTzB73J+HKmO2YGSbBSUYm06gA
	 fVr1eMS5+WblNEpuUZsRExNr34MhDtTQrBY8m8/bVThgwl21NotqBpBYKPUWac4P/Y
	 /ObA01NTOxgTbgABhw/phcFuJTI6WQGmTR0KVKm71dXGnyUekeNIeZlNXuzxOrzmS1
	 AzdM8yiHB5oCfmFJRckxksgv3CCk+QtfI0r6/teC4LlfSu/fmSKIKFZy/ffrhVDnrb
	 FgVYU20hbvz2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5DD8EB64DA
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 13:39:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168916914878.19401.11358811100320172757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf5455e6f6e26d893cdddc84051cf4dc75840e4b97bc205c0e8ca266e5efc3cb
Date: Wed, 12 Jul 2023 13:39:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689169148
