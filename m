Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 431AF33F0
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 15:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D41FFC433D2
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 15:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678634825;
	bh=GEy0iMPeH2g6iwWEJaupsugtG46I4+zy/SPJV3UWNsM=;
	h=To:Subject:From:Date:From;
	b=iT07sWPln/maRE5NfTjpk4mMoIxsZdZVrBlwqCOY7/DIFAgTnEYOJQIj/oRa4Pdpq
	 0cySx0my1I4IYnNeUixGVKUFgKR8Hb+iciSAg0cVHOSNPd2E14fJ53ahd0WTyO8L27
	 e/CQKsTs+vTuk/8TLAtYoYh6cKsIWTBsouzJaH4HRLIGLbhXL7D8n0mjZ4b5nQUbHW
	 OHkhHrqSSvkNQIUWQRJm3vwZK+nrrw6ZLvSJcGk6mZweqsUwF+NmYStdtuvECLGCnO
	 wzBVuq5WvgQqi51hF3o+Bl/pG/LILK2lpSekHUkYcFiMQAS4oPHcKPYGp3Sy4iqIvt
	 aAx6/v+psE2PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBF9BC6FA99
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 15:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167863482575.9815.7965736947365309647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 465327ef6225e23af2d9ac3bd63d9ad952a19659eab0e5e11a5435bf5403bf12
Date: Sun, 12 Mar 2023 15:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678634825
