Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D867B1847
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 04:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81815C433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 04:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670819487;
	bh=x8+mBdpcYSkfRTDEjcOT2/rarLaY+LdUAa3oi6g057Q=;
	h=To:Subject:From:Date:From;
	b=M8ITNQ/xxfgbJxwL7hUx0zqKjIqOry7mJi3EeWBX0LTIHHPhuO7ueUF/w0vFlv8R9
	 L4ZFN8LH6GGna17fsZjmGFm3bKWhmgfwxkQ8D0PmlfUtc5Wiq5S6TKaOEUhWSMnDrz
	 8zYfCwJkP7x/jNMzE601+lEGIf408iyrZ/AB1kLc35FN4K5xFcpz5x3CkCfR1VvXi5
	 R+r36ZQnLjuIDBFB6tnjAsq46fqSuQuTPLig2N7sr6SMvvn9vTm0JIN63OtFg4jV3V
	 FnlP8i2ihbve+K1Zm+IhstNOkqG0qF3SzRZ2ka1wKzrkJ3285QSgllBN3UX/9KICyf
	 S351KffqLQSUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66175C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 04:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167081948741.24551.9793221409355579769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ab4d8a287efb122635ec66d6c631e4013debb74b04d17a1b37b6a00daef834e
Date: Mon, 12 Dec 2022 04:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670819487
