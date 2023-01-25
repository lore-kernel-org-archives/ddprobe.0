Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 502992F36
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 20:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1AA2C433D2
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 20:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674679985;
	bh=x+KGJJ+swAcNx7Gf9F+G/ZL2Rw8BH6gMMeF4wM2+V9I=;
	h=To:Subject:From:Date:From;
	b=l5uvetKLRkk0iUFNgcwrd1n0+oyTCPGBJQqSRzB4hpbR3Wsv7APvHjifLirxV0bDz
	 LY0stLc2Zz8un6RTm9Q3/e7TGtECw9/jI4OjXNryqYnOBWmrB/wAK1B10EU6M/MuZy
	 Qfkc2BlyFOXa0Kh+tSCpY8HY7iw5UlCPQRyF4ohi7a03pTI/RptncBx/O9eKGwP83c
	 kH5y/klKKY2vssYq+L933iDz40yWCPx3lz2frDcMp8sq/UcgYRi32GT8BZUHWVpHag
	 Vi1xOswe2hfaUtQFsFkoo041NH3JOcY+6d8LmduRouPb95XgBVB47fwqYlPHpF1W8c
	 EB+iWuDKVfxUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C00F8C27C76
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 20:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167467998577.20449.12927731983453800224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fbc05c2ccfcaa347b6fabb5632d46bbe6218d994ab01b33021f8d3127fb3af7
Date: Wed, 25 Jan 2023 20:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674679985
