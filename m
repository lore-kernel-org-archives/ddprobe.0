Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58E33DF6B
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 15:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2D934C433EF
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 15:49:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684165746;
	bh=Uoxue+nOPaWdhQBh1SyKFsmH9mJfD0+ZvdHo4tr1kLE=;
	h=To:Subject:From:Date:From;
	b=MaujY+QKKwUZqzNDuNoeWAne6/WZFp0HL2biP3yHL9oyUqrqcXMMOSZpaPwUL90N4
	 lBmTvRPszy8lgLRDv/3mohxzTPWfmUvyT+YJuia7TsqECvU8HmHrnmWGjSYRd+4KKz
	 lIfBf3hZJgpNoSEcphyT2BUre6citGFbSSmkTTFgrQRUHD86uajRjfaAYHoDPNUOHj
	 rt9sLxC7LZ7Gcthn/iHNBezvY7+clWBriVn1Ydrmw0429FjGEoB66kcA+KXR9Fjxnv
	 ZPBqDn+fT1cjffujSwL3kOg7vv9w/5Se/bBUAh+FXPH7X5ZuO4KA7Fd+K5EVsHvjBr
	 MJ6AhtZkH0orQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0EFE2C7EE22
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 15:49:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168416574604.4235.6592208607481784722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 577365dc5f5e3a1e9a36a71f0135c630ebb31e34981273f0690b3231dcc6730b
Date: Mon, 15 May 2023 15:49:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684165746
