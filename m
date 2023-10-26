Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1026414F9D
	for <ddprobe@lists.linux.dev>; Thu, 26 Oct 2023 22:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="td9Vq7ew"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8618FC433C7
	for <ddprobe@lists.linux.dev>; Thu, 26 Oct 2023 22:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698361096;
	bh=cSbb4zgAPwp0Eh+boLTyfM0APMu8HSxQSJBDfmMZftc=;
	h=To:Subject:From:Date:From;
	b=td9Vq7eweUSK9a8C3nCWyRX8Dksd/Jdlt2Q9rluw8QZI2THKH9lQiweP2f/UIJF4V
	 nxCc666DjHofYtNNT7adzpSK/rnE2eeQv43Ap9WDswFh2jeo22gu/R/xuY4CtAfO92
	 Ga5UAAbjkkRMVE1+p0HH0b/bW7ui4lMgIUGoehbEqB38MxbYhzh1yxrEn85jvA4Rbn
	 xDDBVOn3A7+DcECWYMc/Iv8fIrcClBl60ngnvY6hsB73O6AXuXYQHSwfl5nFNuR/Yz
	 oOnQGVHfAMdFTExKM31SjNf4Kl3Nbf0xi+t0M+SGDwzdwyHOK7iabqZyZqZ87KhuhP
	 7ktROeaXeEVtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 661C5C25B48
	for <ddprobe@lists.linux.dev>; Thu, 26 Oct 2023 22:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169836109640.16715.13491514355214868362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b96bb2b0ffb709fed519578b4e9a87ca875f2b7e748b49830afb1d82525b92b6
Date: Thu, 26 Oct 2023 22:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698361096
