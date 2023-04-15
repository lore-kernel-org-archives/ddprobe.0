Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 540C11868
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 12:24:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC489C433D2
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 12:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681561446;
	bh=ve1kinCELtmiZnHVcoZYvhATvoHC7ZGsZoZlsKzTyJM=;
	h=To:Subject:From:Date:From;
	b=lngwmVaUzoe3S5R59C04MJvwHGXArzYadxqzFWu0s62AOsTpRxNpEdkfqQkVTMjrR
	 X66/R2GGigIcVg1LoYio3fjYDD1coXUhrVKdwSQ/cQTBf9kPqZHMcKtp+Xo4JLL7eL
	 KY97RCjYaOtKtxpeqSaeznV8hPKjB32KLnVPbxUBW3Y3mc63hhghnpv9MZ0xpd4IlH
	 u6JI5hXZA19nmAEXaeJYwtYJ264b9mdON4DgztkSuKW0oI3w8YvIuFOrv3ZFZPt782
	 XcO2ySRi2byb/uG+Q6g/OVwXftnKz2K9VuS/UDgKGYOfaiNJABy5gNygmS1hFHAbYG
	 sfwUEUHtNe4KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CADCBC7619A
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 12:24:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168156144579.24160.4262078456842994452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e606b93d4bedb2d0fa250c0b85ec67d0d8f9f938d0cfba3a07cfc3867ec7371
Date: Sat, 15 Apr 2023 12:24:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681561445
