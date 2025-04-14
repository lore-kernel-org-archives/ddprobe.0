Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4977A1A29A
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744651794; cv=none; b=Rq1mPRnXn16R/DLg/236p/oUZsXKNk33Zjwq8u8pBah+zN+4/x/rDPcWk3EX7WJEE8XHXb8ch/vufbAzjD66GDq/mxL1Cfwrft0Om9nkaYbaa6eMWiym3zBmuy8muW3YpTItm36L+E/7WdOUNnN/9dleFJM/HvY41gjgmtZoe/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744651794; c=relaxed/simple;
	bh=9v6gHXHdh+cLseYBmPlVn+ClMIS97UX8z9Lryj09Vhs=;
	h=To:Subject:From:Message-Id:Date; b=fpBN6YFplg9z9H/5/623skTwDL6VKC9iRjUMdjMqd2ij7ZvM5g5u/lANPs8d1C6TX2m0bpXUm9U6GtNOt7wumWfS1wPUT8qkCK3Lze9yoegH8WTpf1bbd6h/dMPWbJaM91ba7b24Ci5qNFVOc0umGK5tEk2Vc72LjR7OEiSj8DU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jttm3vFo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jttm3vFo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF290C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744651793;
	bh=9v6gHXHdh+cLseYBmPlVn+ClMIS97UX8z9Lryj09Vhs=;
	h=To:Subject:From:Date:From;
	b=jttm3vFo5XimK107MclJlwDzuAju3xrDRT8PKoJF1dDp+Ff/Tk4Y+j1EC+yC3foe3
	 54Se7hGqtVt73s6XaCdATwjkDYXEPIXLKj/yHR3C/uwDqkhCbCrk9VjHE+7dORSUhk
	 ftIXs4cSMKS2Z9/oy2/xWrRsEmMUoEHdyuIAxuRT5hXtdX7FxOV9YD/macjgq4L9f4
	 cSAZ9wpW4ykiOVavuqn3Rse40hDSxZk2uWTn4x99sNE1RmeNQY2HxCiQFsZ5BLV+30
	 CJFqBVFsfryN7bMyTxWXWP2LBKWJY2DeZ3IiCeXiX0ZsqVglxmBcuHvx/oZWowf0dD
	 xSJLzcs64u5Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EED8C369A2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174465179364.14908.7520821143344277507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38f12911519b5d989fb0f2a2a5be787349921ea0c9147fbddc894e25338670bc
Date: Mon, 14 Apr 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744651793
