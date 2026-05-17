Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4609B31F98F
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 02:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778984434; cv=none; b=jFTGABuBNsOlaZG9pELxVqSb0DOKhhkr+qw06OD2WTWsp+g3wyWIaxCZn58Ou9SyUQs9siPD5z5n+tv8LvIxtnWC5vhmRnV8wEX4XtIQaWSzx9tE8i0tacTDq5AFJ280Fq5qqJs9ju2Zyh8XkN6pSv5sdnPirKlVMOR/zujjZrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778984434; c=relaxed/simple;
	bh=xeY//g78HUZJoPP0l/feMfOkHZHOTVxUZ0hS4cmEQfA=;
	h=To:Subject:From:Message-Id:Date; b=hUmrsIrYUlOQPNEVVR1ddL+OjFWfOZyk6KlLDlcBdqFZEH31eqaDUlD4W3+Sm7PZPogu8gPsAl2YSqxSwDxcszN2V+w9788CeIa9hLEIMRFyw7pCFsCGlSp7XETZONcSZIslpVufIo7ym+OywlHWoVI8XVbKaP6WBcFQBAoFMSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N+KDEoen; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N+KDEoen"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8419C19425
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778984433;
	bh=xeY//g78HUZJoPP0l/feMfOkHZHOTVxUZ0hS4cmEQfA=;
	h=To:Subject:From:Date:From;
	b=N+KDEoenV4ysBYa3a7xkqaKRRIoR3ySZzSKSKI/+ezvzuPIEmVCo+CNi1IVtPu4KB
	 kZxBJU+qlX4t2gE2j7UvsLAMM3nCfsvTeaJSga9Gsls9pcZINC7hQctSDxEmXrcb+d
	 iIOW8XNn4hBnxMzZmaqsWMWbCEY42IxItAmkCjOHtbxnBC/IIznk5eI4m6eCE8T6Zk
	 L+nz4s5WnQfpBTh5q4t1+fjoBI0OV5Y65nwovdMn0jHSCFR55cN3JrnFdtkA0ItQIn
	 Ep9l3tVt6dw5nzLrrkYj/65e4t7Eo8KWrtg2fXuwOS5t7p5wONd6hWCmOdWW89YSsM
	 i+//0tx2Ky5zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B295ACD4F3C
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177898443369.12681.10143662680681917714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58d4a458b9a433e709796d1aaaa70911c84e44f23d44c89959a7a78fb8b80af3
Date: Sun, 17 May 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778984433
