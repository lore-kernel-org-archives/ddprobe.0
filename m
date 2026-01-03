Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368D46FC5
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767457434; cv=none; b=K4CLBDO6AL1OW3ThhgU8loQAukviN6DH32ODcgSlkujB+Fj3owhbzAxQmv7JG4bEZOeGbwklM/aqMFHIDqrkB7A+93BiLsIJ+JZqt4nzUSBQHQpRdV5yENyV3cAjSU0hfyRgY3jV7yHfJ0ql7jmmQwZ0jQ1aR8Z5k9UmF01cimo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767457434; c=relaxed/simple;
	bh=5U17YvobW0FC6Ti0NbaoRFtbke2hM5m/HU4F0IOWQQM=;
	h=To:Subject:From:Message-Id:Date; b=RL+ZoQGSHuHoaKIEKnNI1/Ub9D7KgmcSFC6bQxILAT12hgUlM70Sge/1mMYp1yYWYxCHZ6i6D9REMFTpBA2kHhd9cxSz3Lhg6ai1BjsgmRU6ljmNSyV6OGAMMniahwWowSREtoxmFXWwxlOMHCn40Qs+W+shcq/HhdJIO7GuipY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CoPeLkx2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CoPeLkx2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D33C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767457433;
	bh=5U17YvobW0FC6Ti0NbaoRFtbke2hM5m/HU4F0IOWQQM=;
	h=To:Subject:From:Date:From;
	b=CoPeLkx2z88sBdS4CHuAHM5DeZ2P1pT0FH9ami3Ol75MnZcoCJMa8WsW98lAd4YX7
	 kQQwuwAaWf+67uSaJw498nZ+ZR+BnAKeDrYIKdH4K36EDg9f+NvS/YGP0duqC4pDqI
	 0LiBZwpTVO2WjzA8mRsrQDLTjRk31xyZn8FdD5nFkiyCxEGiV4cxNcHQWPLuK6/kXO
	 ZCzEwzoMD336QqPd8NMQ8GE9Y7VPnkanNP334rd8bO3UmLq1efflE1Q96BcwxCsiyf
	 5b5NImbAVbRA4Xq7udZPr8/ZF7IHHcWSVjyy1fKcop3oG0c3CU+DLZMAMGoH0YNZ2L
	 O2IQi2vM8Yivg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900D8FC6160
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176745743358.17301.10251550626049865020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d42854187ea02568f6223d6fa828fa0381c7b08729435ae172bdd990a32a53cf
Date: Sat, 03 Jan 2026 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767457433
