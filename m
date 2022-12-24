Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA3AD3D61
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 19:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89B65C433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 19:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671911487;
	bh=yNsJIUbJlg1R5aQfJnuIKotSRyHdiaTN7OFQ3IzxkTQ=;
	h=To:Subject:From:Date:From;
	b=Dknux6fATZBanfEGmJy+IVmo58/4IQJulS+PTz/ycCr0mfq4amVNlklx0XSIDkx/6
	 Xgp2yl2Y7c7OZGRHu3YuMRGO00SgwYSv6B+DC9gsUmGodR7sjSI0oZo0W7eRCU8l+1
	 sINL1eqMayFRk4fPozWa/QhqT82/NLCb+KEGkKDsvU30Drz6hCJvN6+67erFZvWSYY
	 Q14Vj/zx/aXJqbHa+ScXVjF8giese5AHh3qDKs9oHzPBF6MX2ZhpETemPjO7dZJgmF
	 JRU9HJ6FuW+rAupktIfdpb972esD+W36qc+B+kNCjhyX8k8jQK6T2cajmOLlNIlAEj
	 IxjohwRYdnzIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EC83C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 19:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167191148741.12582.11224962469607062446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d682427d19c784c624d2cfc8f683b5776223903b15a51766c7fe8c029482456f
Date: Sat, 24 Dec 2022 19:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671911487
