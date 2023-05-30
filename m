Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46A367FB
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 02:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0F26C433D2
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 02:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685415125;
	bh=nWYUQ6FRVGyi/RisB3Nev0AYMwvqGPDvVGHkM71I4PM=;
	h=To:Subject:From:Date:From;
	b=D/BIPxPyps4eorDtM7tNnPtiF+pZdkSrFW18x9qRsol8xTXh00Zd2qNMWIHaRqJPy
	 biH5v6sUm61d2utVOXLdYxBkqLKHR1+K7tH1+BUpBhB6Snc1k6pY+r6+ew2BPmQwhU
	 9kcOYvFiJcSfxeLuycv75zN35PmNAja6MvUISDcgYFMPx8eCdyYAUrPv14oLSm9ir1
	 W4vHN1p4QzArXh0JmqSORMR/fFfCaP4rIPxqIo4/VsRbl7oHu2BmORrhAV/IHDQKMg
	 ITL8X5YwJDVcLcQQc1TqbXEmLgz/ymKBfoMa2xD8kIUjZwNot3A9boMvJ9VLKUnsHh
	 1T8edJglxYT/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0D96C7EE23
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 02:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168541512576.31723.4237142429203288261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7bda696df6815841b7d8220e3991964004136a6f3fe34d484a20c2cfb72a32c
Date: Tue, 30 May 2023 02:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685415125
