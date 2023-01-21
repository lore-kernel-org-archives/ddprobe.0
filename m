Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342F9748E
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 16:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6C18C433EF
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 16:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674319325;
	bh=Ba8Wm7RHkYS/INi3FGGGDK00vU5MMEEdFeeNKjlLybA=;
	h=To:Subject:From:Date:From;
	b=D0OI95zuNsFO9jG+0rnmccNT8n2I+oERDPemRCB+W7mVk7LaI2HpEru2HOSsw8x2f
	 4F9QtCIjnUEe8Wr8qtGXJU0hDCYKVD6Q2aB1eE0XDFKtUf781vwq1tzuVL87ZphDpp
	 VP/4cbgDkFZYPN2Ac+BWn5oQ0Z3WcB5BwGRYU4jY2mkN69mNngNU2VBVfUyIMjuyVp
	 dPBJK+Df4ZGSJAEkCTtB2FoqjQntd1hkPJsQh2cj1fvog65MDgecxfCEkJVAp/2vBY
	 3MnMvJieAPo2rwsa65IWXJS0Iqu6+qc3XjHVYL9AbD2BupsJwfLHXCeapWf+bOqfoe
	 uwaAniyHuhW3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C714CC004D4
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 16:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167431932580.16315.15213720279326818473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38f4eb230eca79919ae704ad8c0dbd57572e8325418a07f9da3a5c898991813e
Date: Sat, 21 Jan 2023 16:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674319325
