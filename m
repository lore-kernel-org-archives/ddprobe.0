Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B2417F
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 00:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vEnMT0zy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EC5CC433C8
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 00:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701216496;
	bh=uBXGk6iDJ8GEzAt33tei5XvnHrLLWZLkfyzmkU9xHJY=;
	h=To:Subject:From:Date:From;
	b=vEnMT0zyl4H6PpU+oqNzlI/S5byAhN071xkD97HmkyPkQJ4xHLFlJzv9i8IBAuyJm
	 ZjVmRVpQ5ajo5gn51I02O/4W3WVDn6au/c6CJTxs9+pjySXsxCCTE/mY41Shz5tlrW
	 1pp4/E2ZGobdssrlbJ4DiKpf2H+LUORKE/6NHjHcQkeb3CHz1VMISoL91hOXaymH5n
	 aMEQ9VWUvRxiOxV+7uWMNCeVYlsqkber53pM8D/BIhWlIwiAZEeQ34C4O8MujBBtfq
	 2XLmby4SiLTZdtf90goxiSOdJEb7JuzaK3dkypzcHyjKO3g1t5DzWXTeMjGoWsgsZN
	 AYbeEccni6vnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64388C4167B
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 00:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170121649637.18457.11734119659276627249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1462bd265dabfc8f9a0b2f81b2b41e24e1dcf38ec07da7cea194768daf6f639
Date: Wed, 29 Nov 2023 00:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701216496
