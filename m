Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CDA3358B9
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 01:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783821514; cv=none; b=kzrhaQR1/vENVMppOqZ8FjPWG5lr7nmc+8/CAqDY66S0IROEpD5nykdTfGJrXjgCVTrihV79oHzhda/PS9Yoo1qHpT/7Hu6m+9DCbU7i13PxNvuFuG/LEli2alN+vvYc2g2LQr0VZGtb+RPffJ28P4LKdflbdb2/logCh0S9lfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783821514; c=relaxed/simple;
	bh=Qj90DylCqHcRJOUk6y7wQIZOwUObRWYfU3f7fHr+lmc=;
	h=To:Subject:From:Message-Id:Date; b=maP7Kl2X16Rdgg0g3NlWsYhP6Fnx11jB+bqOTZLrUTa93qw4l27pVRB1AL3wHUYG3MKlA0nsYUQrnjve5BP+Zo1epCJvNJ41upj2AwVkt8kC8eNXUsIsNTQRc7Mmhit049JKPuSX+iVGYEv0v0gdTXO42GAq8OUOdN+dxJqQdxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hB5GEw3j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hB5GEw3j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D39ABC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 01:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783821513;
	bh=Qj90DylCqHcRJOUk6y7wQIZOwUObRWYfU3f7fHr+lmc=;
	h=To:Subject:From:Date:From;
	b=hB5GEw3jqxMJMAdAan2uzipGhg8pDytWKS4ecG/pTyWn3IWlbdedsYXHKc0vGpZjy
	 lHm2Wz0b47gA1+ySKSfv6pLSqLRiSMEAGN20Os5M+LGOCKkIjh9HWO170ZluhQf8bV
	 z/2WfMmVRv98ws1RZ936+06LCTI0/pLTLzC8pDDPedKIyLvChqTrzsJo+yMrWIFp8E
	 H3XHtbRZUaoUg6jlzh9wUfQ7AHvZ+jX2hZF8BNdTL1vRv12pQtjbQhOoXMQoeK1vng
	 gGk3/bVssFdHKX6hafPyn81DfwEoR/NkeJrw4o+1GZacWaSo/SwGLe4cjs+0YW9p18
	 BjvVgbgFd4YeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA61C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 01:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178382151368.8946.9316708469088743778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c845e76afed7b8308c05fddfb5e6d3eee1f2f7ceb37a1e298d6bc2bd1ebf50f6
Date: Sun, 12 Jul 2026 01:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783821513
