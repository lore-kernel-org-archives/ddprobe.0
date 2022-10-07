Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C891A7F2
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 04:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70595C433C1
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665117653;
	bh=x3sY8K9DFWNrXfhgx1H7aDTGdc4aTrOJaVNmWOv91oo=;
	h=To:Subject:From:Date:From;
	b=kgsZaHmbnQucABQrP249THtmximRH8/IMmDjyacxoCuhIomPp94VA8Ub1MtXFqjTM
	 qUECyl75Xsva/KMDSAhQuhInJdJmi73FKfR8popNuqYhHOugDm7aNwW5TexqfxWiL5
	 a2viLx+J8wiixwMv6uY75siYut8fZ3UGPSEbx4ENz/U0AqGpcafBARM92oAb6xcQu4
	 Tr4dyv1zlpjfKKM+iBJ/TGU4yaUnRoOqnY9+Djh11dzQK7d++MoSYTgmgehKwbSq6Y
	 MsEfshEmqKmf24C4W9V1jIuxqhAX1mRNTAcLOwhvlplGKKNGG9ONHXezYYqu2cYdY+
	 N3HWBf5iQMvGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53880C433F5
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 04:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166511765332.29753.15731386196618073709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6441b815b06c688c36e302dec1ee7e6193142038bc2c52bffdd423be95122bcb
Date: Fri, 07 Oct 2022 04:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665117653
