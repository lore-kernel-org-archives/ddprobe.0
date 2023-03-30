Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2E31C05
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 06:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA427C433EF
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 06:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680157745;
	bh=Lro3tyxMLXZnjU+pw2gVstERfJMDpV635IQNuI21z1M=;
	h=To:Subject:From:Date:From;
	b=YlvbAaqNwWZc5RYoQw/DIwcOOCHutqmBVzCCpkJsfsDWvrwBteIAFJtiPhRrT+3OI
	 rrPA4lF68ZUfgy9I76iLBu47r5o8BljetrHRyBluioDMOd1Nu8te6rGImZwxzLef+u
	 hX9/9lmmlNKrFY6NAEDwJZixgrgm8fXytxwffxxooUikseF7Rx6rwjGldz6pTSVBom
	 oJzoNn17p/rAs5egh5lTvGs92H88zUxbYCx4K7+8CIIh9Z5sc+N/poErFxIMBU4psN
	 knf1dzWvBEXrwHwtwSHHi15qINrXB0Lw6ODVuLrqnnuLj4O2KF/LTNlQjpY+7dusxg
	 nYL+9amFQw0fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFFA4C74A5B
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 06:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168015774577.31709.7472607512176363232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 345bb92d80039e0be339a772b7d7ef26cc71a0cfd8109a852ce0bb1d435bf02e
Date: Thu, 30 Mar 2023 06:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680157745
