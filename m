Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E787E541
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 17:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IE9XCBiG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82715C433C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 17:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704563296;
	bh=GksnouOglbJ7ku+exu5fbfo3hw3SwkEKVozGG26LJ3E=;
	h=To:Subject:From:Date:From;
	b=IE9XCBiGxUTD863tccyIse3hfhOYbA4GBiJQZNuAWNzrj4FqGPGRkFGf6Bg2Xlujo
	 MadwJRU1PrO3Ypk0mlPys0E8/CTHMc3isUNTLfLgscCd3xC43omu9oObRHwskWEQeg
	 lKseSJwTnTlrL8zKuBbsUXm8vM7VKBIfC0cpB1sEhjR6WrA78mMfgP5Y497V2y+mNW
	 e9PrrsMl0w9W2Jgx7CsbqtBD+O3+DJd3GpC/klwSLO1NJJacdTmuW6wGL8MX6uBdnM
	 CRcKd6ozYuwW2DdqIqqFLo+r9rHktmeqsaKOvFR5HCSO2f+jO43U262E7kJK40Yn0B
	 K6TVGbZA1E3Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61731C46CD2
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 17:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170456329637.12399.8276780116347416884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b253558977425ae9f12cf4b735286376024771bc6899e03bf3b8e79fc3d0f25c
Date: Sat, 06 Jan 2024 17:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704563296
