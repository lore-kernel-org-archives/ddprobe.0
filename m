Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC5077B
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 05:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F94AC433D6
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 05:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666846854;
	bh=BHysN/sXLVPZSS6pFdjfi3gQJYLkBY8M/FSPeGscU2k=;
	h=To:Subject:From:Date:From;
	b=S1gBMqFm2ri0wQ74/cJQgOnmyr20mRHyx3shRVTeT3ufOYcyVW+8PVeFlOf2FhTFk
	 pBC3O8MI6vFkvEP7UzcYvi4S+6d0V16dkm/UnolPNy1HBlz0qWgv01FDZggbkoEcLM
	 OehW7a5sBDT48lDZuqQbDZuQ1l8SprzmZ+OhhwZplPFYvjzMekCwUstiRCPb7iXPMK
	 ghry7n9k6XmyfQmBgMx93ipQzSjYagmzYSkXYPcnpEEx1xV8eBeJ4DvIjODberbBYK
	 VQ1eCGDBvNkLxIEqEglE+VM9zo/oLw1nlQEVlk0PBbEVYIBqIWFcwSIkzAP5ccVs/y
	 gjonn4l67vfvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5504CC67871
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 05:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166684685433.17774.3723219417397517060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 556ea01439f5a2fce55eb1504b8f8ed85bae0fca16d5e7606264d7d46ba6f73b
Date: Thu, 27 Oct 2022 05:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666846854
