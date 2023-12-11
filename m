Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09A814C3AD
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 15:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h896liYy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E1AEC433C7
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 15:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702310296;
	bh=j5b2yfC0BhGixFVdKgY3YUkAOHe3LyL8fki5sjezvi8=;
	h=To:Subject:From:Date:From;
	b=h896liYyOpi4UlZ7EW6MDwpjn/4iKK32s7zhUojI+E8VgVanhgaBW8h+0LDEQsd31
	 fEq2OL/3twtvSNSLJybxHfUUxPvGnIdQLhNZNSWxE2LqE58oyEfFrLuSoznFn2wuB2
	 paQ3/rTxLeep3fpjGn1+VM0/meGxWJ/XViv98Vy5IT6Zs/akeASBGxLFOcygg9do/L
	 noSuSM1gpGxI6smr548WDoVoU+NZODXENu06KEI3fueolHg3ZWxv9rThRKfAcfaax7
	 VtEdT6POD6HiYT2nshPu8PPte6PsFq68amKiurlouyskgYkCiryI+LcnJFrY/7YD6v
	 oMLz/Red6fIGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6424AC46CA3
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 15:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170231029638.631.8606696154538258285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d415fe232970fdeb3df0d9d8c75a76c3d480cb0378cd8fe7f46f9b28374469d
Date: Mon, 11 Dec 2023 15:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702310296
