Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2B1D657
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 06:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83B2FC433D2
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 06:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671259887;
	bh=t+cSU+Rd/HeUn9Fz/jCqQMePMyGEtPEL60lIjOxvxEA=;
	h=To:Subject:From:Date:From;
	b=kqd5RKtVadIWwRuqXhTBd644GeMDJgWaLPpnEPc3laRmfHV/7QFB4iNGWT7Pn+z1x
	 ZpnWTIktCb88OQvin/jWev399BZv5YzYw+wHKwTR8WGu5JB0YbOy6clE23CGBGZ4C6
	 qtEpSCWkH8YGpQ7CIHU4BczMOu4EEBsdrkJ36mXnXV3ERq2T3cZGSmUEW0bfVUMIWZ
	 ba4P8NFfZiNaWb2QsZAtHX6/c0Vimr+2IvrZ95NR97sy0jwfk0S3m9mpH7GubMfmLY
	 wM4zRf4m1hnrq1Wb0D/o9XD90AFcl4dSP4dUZFqfYeZ4fcDXjpgb0drbIQ5lXrptmj
	 BLnXu5dpScvlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67913C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 06:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167125988741.11091.17710478013007464594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9e1236615ad3142eaadbdb95c3c045c4ff135c1827db7b9284e1e5098576e99
Date: Sat, 17 Dec 2022 06:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671259887
