Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9D9FED0
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 06:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8503FC433D2
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 06:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672209687;
	bh=EeFtNXEGYQKLYHbWeBzGFbdwsD0GMChIRjPScgevbIs=;
	h=To:Subject:From:Date:From;
	b=YSWgnzMePV8Y2Bmt60kxx46BSRXmgU8x/9HB23GfaBTTmxe/pVpIXFr+AY2nrJThK
	 u1yWpClozMS3kKy3HRXSKzNu9Fu52wSIgw5gUES9Yx6dX7783gXz5OY+q9kTaHMmYz
	 znT0B56OhxLMbA10FSA/JmqdYpC5YpIfUtO0aBbcAFYGRz6C6iKD26jc2/pDzaRUKT
	 aOYJIrB+pI8BPZWrF9EJFckthpRYAh841K0NNfcwiCjD+sMZaecz1GBctGvyTO/+2j
	 Mitx5Jw2qBLAX5C8XrB60olM5x/TiKbP8a/WPTlai1lGrxzPMP1p5hTZ7sTBcAyrKi
	 b1AWMzm9D8YMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66497C4332F
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 06:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167220968739.3604.5156343098211765403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5134fcd557909ad3f712a57cb2aa9d15f93c3a6d2e19a2a0faea0ccda9a380ed
Date: Wed, 28 Dec 2022 06:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672209687
