Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C82C27E
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 07:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DF1DC433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662103853;
	bh=4MKPRIUgnkkEjPZ6HJifhnkS8cxBfD4Aa2NUkBVL/w8=;
	h=To:Subject:From:Date:From;
	b=Cdo59vxR9embgAb414uxrhQEUcQCPeYLZXS5hz9bFryZzzQtpxEAJz/BG6AaU4Bfr
	 PG5pdVUQgEKxfSMo/NcnoiQQ1ubAEqIxIElnlfBOUM/aXvsLCr84YDwxxtraVsRsaY
	 m7xqpJQ2KjTwHwKdJYXdQKe/zKqwzOKsvwEwrbiEO11hwuLSmz4LlVDzBWWN2DvAIj
	 YZXO59XYvOmMPGNsQpIA4v8CrrzICy8QLwirdpd2bBnbB7Y+6kbLJKNFIflBGfdNcn
	 5COFVb2ng/32fSmfAf5mcA/7QhxPydSSsJ1Mt8NqtTD/ZF0yx2jbfvq8CUvUMBFVNE
	 XC7DNYsor1v0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61785ECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 07:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166210385337.27490.73471047026095537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15383cfdea4c196e65b991e22bd0f426534d9052754ba69e0d511759443a96f1
Date: Fri, 02 Sep 2022 07:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662103853
