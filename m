Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D517C2E9
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 08:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bj/F4xMY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A4BEC433C8
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 08:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700815696;
	bh=kQ9b0rfhz8ByC1bB6m+cQ/tSOej/q15aavt5pD63Q0k=;
	h=To:Subject:From:Date:From;
	b=bj/F4xMY6gQaLriU4zOVCbzo7lD5yZ7ztEkk4TZMKNA96QHI22Cyxy+B8bIvlAwJq
	 iH8sSiIhjR0Ka9JbleGrBGQzZEHL2pC505p+VybUbk3TD6PhP8EnmoEIxZkGFZRfex
	 BXo5+3ADMh/HCI2uQH537M2I0ii1FjjGBR8Y+nFCdLf63C2YioD1k35ivaioDyyon5
	 g4xsqK9dFcDjwuGCbqY6GyuON8FgcY6rudBrx+S2iKzJpULPDu2mmE2+YIm7I3hyo3
	 l2pYM/rOG19XUh3ZfKESyhJGHB7LZ51pVs8s3uAtd14F4MMVUpB0eAWGY1f7XBOP7w
	 1u5tbAu95fvJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60761C61DF4
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 08:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170081569638.2313.15122528144767577652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1054f96874ee436f371505b00ce9882e838cc134e548144f5a0e4c742cc61966
Date: Fri, 24 Nov 2023 08:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700815696
