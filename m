Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03F104C65
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 01:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ijTvtU2Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82A01C433C8
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 01:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700528896;
	bh=+QO8D2koQz2cEmbUuEIyiN+o8mjnddojNMXhyeP4uIo=;
	h=To:Subject:From:Date:From;
	b=ijTvtU2Q2zzdCgA4PFURDuErignGRjgs2dAHsc6ceEat+YFtTgb8Tt93Ry00PAeU1
	 EvUjFwDxZIW8KvSGaq+ZTjlEEHhCJqGMkhXYiBA5iW/unHAFLYIaqAfbM21+QjP4MY
	 9f+4ae20yq1lvsnTvAVQEVhn32TUZ21LL0X22K8E2zEBL7+vIo6kniYv4YrKryRfvZ
	 0rYO1Aj9PghDVYRwDZFVFm5FuQC+NEzBCxcC9bMIv8pSf7iM+wRNML1cCjoVWDQI0L
	 0CQM+mcAfz3+FN3IocvwnCGeY/xcOn3M7sIUl60SpMfbP5FC+mfNrn7fx2Udzj1WXh
	 0EdUyCmP4ZCTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66ADDC61D88
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 01:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170052889641.29978.3667188896450401208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fd235e8d705ae66eb1efd3f21c5707bdabc76b5c98277e74bdcfa955847033d
Date: Tue, 21 Nov 2023 01:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700528896
