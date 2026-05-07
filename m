Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4719A1CFBA
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 04:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778127454; cv=none; b=mFRFu+kowPPWTUQCmP37nvhABtlWIcirPOHxkCrhX3aYsE1e3y4wtWp7nKp7/izkmVpHmGsL8cMKtwjP6PBp5jDFIpqQ2KKJNqN8cCiY69ixLyJ6C6ltlRp7DUU3aOPUoJRJFMuQ8H4pdz2Vgz/reahQ6LFWvHoxkF7sQOaXX7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778127454; c=relaxed/simple;
	bh=1al1WrdzQWIAky5IJ3lgSY052sc8sLFsYrJYEUqln8E=;
	h=To:Subject:From:Message-Id:Date; b=EteZD3Rqyc057N28QvRPyRr4o2kLg4hyNYPOXaEJNFxluLPsMx8kSBjiMOWW/ftktGxiRdTX3xoDnCuP2QlXAlqFas/sbycZ6wIhY6D+mjo8SpQIT9jnZ9f8J4RU2R7C7NHABoxv3xKcmCz+69/vnyTD7BSmzrUQ2a97CwxFBHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZMv5BOiz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZMv5BOiz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C79E7C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 04:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778127453;
	bh=1al1WrdzQWIAky5IJ3lgSY052sc8sLFsYrJYEUqln8E=;
	h=To:Subject:From:Date:From;
	b=ZMv5BOizI8DylYrxghgr0Yxje4KyPvCsRKU9kLsrT5uw2n8RpuV/pBmzcb+x5jFnR
	 AI+cKnRwD4GQymi+h4ufJpDe58u3nK7NI0YLUUwQmU+/XcV3XGDALm1aqIKCtpcOiW
	 EMGRTpf5+0qPC71MEDl1OEBiKOcukqSYlKtche1B2RiHfEQxnB0p746Xkm0ErCGVJc
	 0uIn9C4PZgaHMjSGH71tqrK5icy7WwvEujA847dGL3jVoud7fGjC4yodP+jqweNyoa
	 VRgHJsv/sAX9Wo3wb8bHdGtQwZJLpRMkx32Dmfr59UATu8nYRo7jFUgDaJeKUeyNXy
	 8NfjeJsPLB4JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B34A1CD3427
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 04:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177812745372.3803.15417017167697310919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d992700bf840f093a845e1737cca2c8068d867d340469ce947413dd3a5cb811f
Date: Thu, 07 May 2026 04:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778127453
