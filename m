Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 670817C
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 01:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6183C433C7
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 01:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690247528;
	bh=AIDIDT1FTQrY/23fjhwTfvL735XBAuVUkcIvqNsAtQg=;
	h=To:Subject:From:Date:From;
	b=BSfFKMPWTPZ7SCeT4HGcsHBWxC77lvrtzR1k6HdXi0G7GVmVM7ZSEPzNWx9d7uXZY
	 PoQnO/h3cyzReuKaWVouXYRcqm0hzYHCzwkZIpsYwzZn1Lzcr4pDqvikJeRyjEFnWi
	 WRhrP1a5CpdlJ5o3WTL3NV7GcWx7eTJYyAeFKeuOE5aSMNd3QSAV0/QpBII6H0xvGJ
	 Y1Tw9w5G5JuVkdnt0oA58cBssxx/1PheyMOwz22JIPksOqnOiCRcgBUdfPZdQGxk78
	 GMFMvgrJJtU/RpGsmcYDpUORpwF5AD6ODyEwYGnybw9N1vt4GQ3Tg46e8Xfp29glZk
	 fJe70McsBnj+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1973EB64DD
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 01:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169024752871.26561.10752892213808796277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f8486a07f0cd68de3e673eb59fa525f86d71c188113623c1a3d96460446e543
Date: Tue, 25 Jul 2023 01:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690247528
