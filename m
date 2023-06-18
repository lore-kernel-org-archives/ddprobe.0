Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B471FB5
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 08:30:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEC77C433C0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 08:30:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687077008;
	bh=U4KiX1KA7hZGI0R8U+cBihrIjsFelHEqmGEPlqDZ3oE=;
	h=To:Subject:From:Date:From;
	b=KaidaCsTbX8eh4heO2zFEk6K9mJU02oFotNAZf8c8ixbHX2J4CCpFqnX7IoGdGyPn
	 v1OxR/Ak6IUgClc79A18XFVtXFtNZc3gPFhGPqsHu9uA19icUO2Oqoc5jEMBqNpK1N
	 Mo7d62AKfJaIpGsaAlcyC1/ra4Lr2iytVEi0WVUjqv8rAazf2Omgppec78YvxdSEd4
	 +Mzb5Gp8SELTBMTK/X41sE9/kCzrYNKHi6adQ46xVlpdcFgG39eLow1IH2e5VrbwyZ
	 CAnyKQnTmyimMuq5I8KdXXnZLmGpERSNELnGPws5oRSD/96ylYX5S+W2hBmko9fO/2
	 bdiSaVEY/x6yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6EF5EB64D7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 08:30:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168707700867.12825.3487024304294554946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cbee2fba4cceec4fb0cd989ba3f6bbc0f0e0d97f38fbfa619b3ff29ec65df79
Date: Sun, 18 Jun 2023 08:30:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687077008
