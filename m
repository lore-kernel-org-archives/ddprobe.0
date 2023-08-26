Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84C491FAC
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 12:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C91C433C7
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 12:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693053848;
	bh=JVSgilA9fW+LRF2jzhn1yhF/1n7jBQvt/gfmGfv7Crk=;
	h=To:Subject:From:Date:From;
	b=OCoqF837AGJ+fkM58kgkVQ8VHixZNLASGZOaRwbX4Nyo5xbwpflifH38qJMLTf4v5
	 o5dWFN2fNUV/E1MyUFq1YC6BXRo45Ag3e7ByZAkmPsWdtOAjVFulfwLeWV5LvUTr/L
	 82nWm4nWRb4NwOIR612aFifBE900COR1ytfRuw2oGmJC2/EKXAHA7ZGq7L8jUQ0LNQ
	 BVy76hX2Vr7BBIDYWm2bP96f8HD2QrXVSyJHgWjBn7sQAorVWBQkDpZosFY05vDpyp
	 CDX5B1KLTBl6LD105eWdUWtLB4+rYq5Med2emyvfrVcja4xU1EdFOowoUlWPqDjM00
	 SKLmgva79q9IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B43AEC83F11
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 12:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169305384868.25261.9247943982624973524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0ee282d399dc0989171e21fe98c606acae6afaf2b08fa30f436682f359ccf4f
Date: Sat, 26 Aug 2023 12:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693053848
