Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D83B1C17
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 05:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECA81C433D2
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 05:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677043866;
	bh=LwxRi/ZJWiHmjzKa6rnwdYmEVqegu1Dnurwz/v1DOlQ=;
	h=To:Subject:From:Date:From;
	b=eyNI6vJD9fjFzwbCGG122tuiH9RMHUUR9lFRZr+F/l126Mv20fmFdxe2uNoe1oAap
	 9Gt0QddmHXSgmne2Ovm2Ca/CYN2FTCZ2at9QkbkNxfHpDVF6Cd6X9ZP7ZlxonMYLTz
	 yGuvhTe6nQCSJErwMhA65T6WsnDrZmyecW2GHvupQA5anf0nmg597v+SFFWzVdH1vY
	 hnw52//X/NEiE137nd255ZRr8ywIHLxp6hmiejojsJBAZK8CkqS5mULxwKkdecfN+A
	 PFRREh3fw/nQwjOyv2s4cN+vv5SU8eWB3g02tBcTRTv7N+SZAkwZDq5mu3YtS8BxL0
	 1XAOJM3OZIfdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2C0DC64EC4
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 05:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167704386584.16369.6967009477881887200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b554b8b113561f52fb1b177151834a32b82a034e21f8f4018451fbe2481111be
Date: Wed, 22 Feb 2023 05:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677043865
