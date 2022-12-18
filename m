Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D30087E
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 10:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82800C433D2
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 10:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671357687;
	bh=r7KhNSeJmej7yvzC/fiMxGBtUKuHYcI/A/ze11P/PTE=;
	h=To:Subject:From:Date:From;
	b=fKTZWyvhjoAtECtR0PeOa8kbKgh9BaUZgB87tf78sTTm+lNGqC1oD5WpZI7Li+Ycz
	 PsNKcEHA5U5uVI6E9Fe2d4mZW5Y5iTs/IhH49iBw5gv2J+9gGOCrg2K+uFd0Exm9ak
	 ZHXkRmDZHrX1pXFiIgPIV05tx3yAq6UABcc56wFrtiHq+XcqnA8a/5JuQJoClDpeOA
	 8L2kzniFa1WUyIyyDsZHBUywgxKSoQw+hPwh9kfa8M4OKM0LnCpCev2gqoNXWfZwQ7
	 k1TIvwk7OZwwoTdww0cuJCHFO50TAECagIpYDUWRgn/vQXEQC9kzuAxBYfxcZevcgx
	 eLwecyStJ9EFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6984FC4167B
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 10:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167135768742.24993.4900832698178991721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e564a0823d8a85361311671be3f3b859316f972e8257b30be797bcd2e5a5db6c
Date: Sun, 18 Dec 2022 10:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671357687
