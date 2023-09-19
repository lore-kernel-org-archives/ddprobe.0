Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 497BE28E1D
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 05:05:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2388C433C7
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 05:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695099908;
	bh=OTLzanEE6PhHCY+Hqeb49i40S0hsZpiAYXuKrFBh86A=;
	h=To:Subject:From:Date:From;
	b=TLvCPQNuD/pl5upoUOr1zrjjLfZ1aP7DfIHOucMml7cCVbDURzo2AFv37jid+hUcM
	 T3C29Ag1q7RF0MdJuKFnGMkKgALUTadmLQefr1R2zQ3VC4Y79GkOM4Jk9aRuUugKrQ
	 b+Cm54lhZWmKf1mQnTpFLp6vaB0OAHiwvJVpbXW7H3tXMtDhxdM+7K9i2MrlzK6Ltr
	 xikbnh2cWg1J7/77icfq2VUrUf7h9NAhLKO84zLgYBwV6vNuvsWJRBCAwLMOCxVX/i
	 yBzx/EzxmlIOhFbCtVj3Ll0KCfRO8UukLRJXGcWdFEkMfqwLiSoRsW362Yeoy7mSG1
	 7hSgs2ALApJlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3393CD343B
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 05:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169509990866.19963.3279889258914456402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9234936fc5ba137ae883bc92711db810ce3f840556a90e3489ef86911c64d63f
Date: Tue, 19 Sep 2023 05:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695099908
