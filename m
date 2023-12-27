Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEC6C46420
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 17:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uJik14jv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83209C433C7
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 17:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703697496;
	bh=QlxpYClarFD/8tpna17i2VlRTNZbvwN8josBt0PIy80=;
	h=To:Subject:From:Date:From;
	b=uJik14jvZoY8O3Mzq9+IDFSOrsOxO1u0XwTbda3OBXFejKe0xlYfHb3xEIvqFhEbQ
	 a18Znvebw+qEntynR/5MzlVOmyYfH2i5lokE+nPNFD9Ke57LUvG9iMMlJ86k8OJKjh
	 ri1kamiZFHcnB4qi50PQkwmwc7KB1Pj3CX7SUk5spbTgN1SwNmz2CYKoZL9Vi9TISa
	 9OM4c8fJ7iTbUCUBEWCpBI93fg5Oi/dlEu6ieBx3w69Zmyd5t6UVjWeTFOgPJDRbjr
	 Ygo7ZZagYqdHzo58i22JcZH9H2Hkgx+cSM+5zyzkfLVssHRUEUlOnkIo82FMZcOd5f
	 3bNhoC7hCigCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ACB4C46CD4
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 17:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170369749642.30784.17648403488639521054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8ffa12726661beff207e58711a801e95a772a1340092de8eba963076dd4bee1
Date: Wed, 27 Dec 2023 17:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703697496
