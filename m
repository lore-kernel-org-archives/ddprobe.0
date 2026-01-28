Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CC0B34D909
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769609634; cv=none; b=KKAcNV+gQNBGg4POD+9F1dZRAC2WE703sONAfXhZPDwCH17b6ToUEKqKQ90TpcJO/uVVg+ZsSprdys/gmPGV+ItNeulwIaw8k8D9h0lAvN7LWUcsvtXXxvT3/8ttITugikOesRfHqT0gdK+jqas9aHk/BMEUAnGFJmYTjtOmr3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769609634; c=relaxed/simple;
	bh=qOMkq8UL2rGHAsxgp/8QgVhNlKeAFDWTv4qyKzkULaw=;
	h=To:Subject:From:Message-Id:Date; b=noUqQwC4hzUzS81yQ8+9kYlGG8jgAZqBMpmn2+uHi/EsDka80VhZ00wd69gBt2N8F5FzqS+mEoRyeIC6ZnqCnH13W1Wf+XX6J9krLlWO5Hma3FdpNS0Sy0nYiOHKmth5v8VtHo06dC5U+G6HL8bwE2ufdKLHg/PcdmoL4QXMZV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ML3oYuDp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ML3oYuDp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0265C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769609633;
	bh=qOMkq8UL2rGHAsxgp/8QgVhNlKeAFDWTv4qyKzkULaw=;
	h=To:Subject:From:Date:From;
	b=ML3oYuDpEbZRGpriUf5HJi0GMyIvAmU8yysZFlqg3UsGqnhyneiau+58mHt0G1Lvv
	 C4Rqp2fNq9sNKL1Pegwt8vVwGCqNvN0IkAK/ZOtSjRvGvdRZUEDtklt6I716LbrMgl
	 E+ii5RRGatI1Alvfg7WRwCLcnHm7Jc5ZvK9r3sqIuv3Zc4yZ8ePnjZDYWWaK+q/HEJ
	 DhIF6TAZh2S1RgzrWlV9xYsb0bguLUdkX8YEaKIEPpsuSH8cXjE9QUjRPPH1lDwAFK
	 j8VuGx9H9TXJWe478VK6qqx5rPQbL1gF+IImZ7bp+jGBZYeCohF7RgJwaoX2KwUKny
	 CSDe188h5vcBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91808D3F069
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176960963358.31469.3619893818211638407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bb19965e7c231e507522d7afe78464fc6c02146958af8462d31387f88a5a848
Date: Wed, 28 Jan 2026 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769609633
