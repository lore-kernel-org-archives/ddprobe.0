Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C38142F59
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 18:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A0ACC433C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663353653;
	bh=3TVm4UgcMN/J+g+c0exYdyopDYczXN3+90ym/Yjeje4=;
	h=To:Subject:From:Date:From;
	b=tATMsOyrikffZyhVdWluvKE3+WCklKAu0FQUNZVO+oAXxqFXMtuLpbBf3fzE8D8hL
	 RCnqBHBRtGTCErMnathMrCTJw/GR1+JOBVHnkiGF0uMat5rN2hgQQkWxHawLORIHee
	 lEIUbrhZJAfvJ5yFEgMPHUlAQJiVegTxtlm3T+Vb5xchZKFk5YnbR5fFg0/iDbDSnP
	 5amCz2R6CqSvvLPN3+w7DHQeLznTRT43DfSmOSJfjqwSj5ZpfjcBQmvfmB8bDrluQS
	 HChA9JPqxYhSPe1v4kbXBbuQMBoLP4om+zBTkHwCz1lVFSgGthdXeGfDppfwUqryVG
	 4/bshO4Q4IPKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 583A7ECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 18:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166335365335.14240.1175994987752313815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfc7ab2a868faadd1aaad21d5fc20fcba7f32a59e4956952ae8deec69e05b335
Date: Fri, 16 Sep 2022 18:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663353653
