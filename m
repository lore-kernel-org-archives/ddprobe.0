Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1283D8F62
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 09:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fjrWF6rB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B6CAC433C8
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 09:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700905096;
	bh=Uz/wiobuSzLV0bFC+FKAkCiiJhukyTJ4Nyn3dSCwYiA=;
	h=To:Subject:From:Date:From;
	b=fjrWF6rBxcyNpSugK3MTuQ9FTqPFLWvVlM8Q95aZ4KiA46NvmyvdvwoOoxvEYnsDi
	 1crxQsfxuQIGVJl/6OSnP1wkPp0Jqm1Q8HtgWicrK8a0299WlJIFIGhHo8u5v8kay3
	 ZErmsbGmlq2Kyw/bG/Ql0vfaXQdP22GNnuHWCBV9CcIwHbvcrdZJteh+jB1IUUxMTD
	 5xk/NA3is2hRsOo9LpneAOGvYJX6FUU+fbE3Gd3qOmC50nKKQyW9J0iv33mOQyUD5R
	 Pz+lXWvx0B7LE8sN6Rp3LQgDozPVQyIDJOjdBRj7AG3v13/H8BgQQJXtQwxBPcV0nG
	 chWR2CP46fIMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 602C5C61D9D
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 09:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170090509637.15855.7592410504884741969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e85850b1cee5623f52e972b8281714cc2925d78d94226ed58e725619f373a3fb
Date: Sat, 25 Nov 2023 09:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700905096
