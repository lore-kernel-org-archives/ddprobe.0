Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F62A2AB23
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 18:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9EABC433C0
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 18:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687284128;
	bh=4BMY/Xm8KpGpLcanHmvevm3IfoHOIY3y+r/u3UZ6MBw=;
	h=To:Subject:From:Date:From;
	b=jEkjW47sWC6XRQ7/+inCwqruOVr8uALsjlOkjbcMv4Nz9dD0/Iu3/Y/Uc2VvReVyP
	 P4LSL+lOblE9Sa6YHp/5Dz346UvEY8YJr/fFs3RERPv6nnsd2E8nOBEtiImZS7GFWV
	 x/9YRHC0JvLhD3p30UEIkMzfUD3AYtNvc5mDLS4o+PaXCuQSGIgthgIwMhnOGmFEwh
	 QS7vyJqHvVTBiv7K9b2WshZMvhIyNSl1ZkK9+ChlV8kBUETkBABmIqMvsXinAhymxI
	 /iJHU9a+/kbygquWlvqBzKf9riTCvHkkRJAQG0AA7DAyxlXaSmhZiBSewx2Lq9Wdwf
	 X/xRHYvA6JvZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0632EB64D8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 18:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168728412884.25377.17140622055766756058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11ac5017d1dbaafcaebaa69cb241281aeb9051ff2b8bf093cd8d9c349bd4853a
Date: Tue, 20 Jun 2023 18:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687284128
