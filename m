Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B2BD1BF58
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725675354; cv=none; b=uj1d5l7Gxz3od3m3cfNN3p/Cnvgofqc80yAFd+QTVht6P/XWk35iaIpn+twzAdamQVHXskkFGXzAJcLom5hrEHIYafRJXn3W17Y6QwHUWv8DwMKh8aeJ19NmCb8kqvhhg3lJ9L73ZzVEi06kbjrihyucTxmX62w9m+dDx+DY+Z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725675354; c=relaxed/simple;
	bh=hIfsfWoBgitfF4LiomGUQeiMxzmoaXICqFvhNxOULWQ=;
	h=To:Subject:From:Message-Id:Date; b=oCehc9GdBWMKzPa2X3a19RBT7ujojLZ3p6zwttfxiwoWKwkl/8MhYXZfQI+uoiQPdPB7tc6ftAwNQhUr+XmgSlBfv4UGgKZ7xQG2AKlF+YDXcpTOS1Rn2pUvp1zZjGuMFx1V0u3VVTOKD7fOFQe7FnC/oHi8/BfmdynQHMHrwyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kpZfDBhw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kpZfDBhw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB2FBC4CEC4
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725675353;
	bh=hIfsfWoBgitfF4LiomGUQeiMxzmoaXICqFvhNxOULWQ=;
	h=To:Subject:From:Date:From;
	b=kpZfDBhwTcpnRAW3zDVMlTUCH9D/z+wwKzvbq4CcCgCUoFPpR+T6NUi2D+wlBY/+o
	 cvAKxFi2dp/Do2aO4fbGAkw35cdxzfkik2NRwlHX2zh/mO2d7+DOGAg6xXRGAErLSY
	 3GxMbhTOwzbV7mkgPxATNIGHp9eKBs1OAMiOHBU3TAS0Mme4BVpKtif7ynw/vkB2Ts
	 C344nSMlCspZSz8R+IiCU8DFMyWrBlFETRZOJ2mlI0w2KkYNJKPjprE/nKVOco3800
	 Je96bEdQ7b+u1L1Oab2N2XO+EpIQgImJqS3XUvgy5hqO0PHwJh5qhlvYpaGY3Kyo2U
	 yi3xBoFdas8JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C87E6FE49
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172567535368.1656.6435146736934852383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 991399d18db841214046fa690953c7dcb6841c3ba838205954e7ac286a625e19
Date: Sat, 07 Sep 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725675353
