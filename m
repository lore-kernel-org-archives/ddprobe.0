Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D660B7B
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 22:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71189C433C1
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666477253;
	bh=tDhfvWjRKSRkGG0toeBdyY/RC2VM9EiuOpCgvCubG2g=;
	h=To:Subject:From:Date:From;
	b=HWxDXFnxNmrHclr8jBIaRYVvYA/DQ9TUWHaP1gIvy1qEfnitVmQgdYIlya6JAgPhj
	 fL/2Osj5g9wqTMXmapK2oGSZB2VtFD20hS8NWfLDhcml5W4tFfqzm7cd7og4OpgukU
	 zAKCHdQJtu9vsJ+7+oj3bXpos/FQr9vGRdxLRNKOlpQ9mFa/Oby5khIMri8zAOq/nV
	 SzlN0J+OHYvm0tKvNL670IFzYgckx8HHHnLsaDMwo8ZPWM2OtxC73mM9SgQELiOC5W
	 woy6jFdrWBSg3nm03xzFtMNz4O5pT/oKC4gdI42gY6bJDhfTf1O0UDY9np309wNSOh
	 EFpOuL0vr94wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57919C04A95
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 22:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166647725333.16718.9312111978454211127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bdf9c04cdd1599a0c949611b9f197cab327e627c5636e7f5902be3b7f2c14ed
Date: Sat, 22 Oct 2022 22:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666477253
