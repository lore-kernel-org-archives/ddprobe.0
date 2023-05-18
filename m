Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D0619B
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 03:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E125BC433EF
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 03:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684379165;
	bh=8NbzZSPVEitjJHfIXDDPGOvBJIsBm+amd0PA8T2gyow=;
	h=To:Subject:From:Date:From;
	b=NTDUwMWKJqqoe4MqYMoNVW/ckoONQiQVyN/X7/eKxtT04m+WHaenWSou0hm99zxJm
	 Q6EIM3bNa/Ool2pQY2PIivBenO7XPIRHjz4do8umVpdNBKfuPQL/dY6N+5wnDfZR9R
	 0zVBlEFiY1M+9i/NGoifQRB04vqCLRvjO5EnzlCCcneWQfhCEpTSapRf7+pf73DzNY
	 hfqOh3pYmPN3iTD5sOwb7hPn62pNQq37qgik6rgsiu/Ji9QbpZy5JqwQvwMgwbef28
	 iAoFuzWW5DPsjtReVb5daK90LnEkKZvvmOOr+YJskoW2CQQBD04RitGrB1MkKnG1fW
	 nPA2Unz3FrGrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5FAEC77B7A
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 03:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168437916579.7101.7761990983555591690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 217d17ab5757f1a463eb7ec0efb3815389b398102c7da793fe9be1a42db8c357
Date: Thu, 18 May 2023 03:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684379165
