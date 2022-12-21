Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5BFA1365
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 00:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82284C433F0
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 00:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671583887;
	bh=rcYOtKan9ck4e84WR1PIsOVhqu9MMptprdUGaY4MFv4=;
	h=To:Subject:From:Date:From;
	b=ppdSdzOIzeCV1T+fAKFcaBv2kKQe0+hAQvQX0q+L9XT6D3iL8PEcxpk6F9br0B4Tw
	 VwEEXT48iuQJPhvclnymTbnCLRvxmtEW9zI7sqDyCEoKtSh2wvWTxiaIfc/SX91c0C
	 POD3oOK1AwFI94FyUpIPjThRZhiTqQUrBdF+1RwM40ncyyNp/xpUA5iOYXrIOAYvCE
	 fLVNCiRxPAUvKdAOH+Z1HyzWWKOiwN9dnGMTN0c5pKTAmPQ0+B/LL+nPAp9eGncjLU
	 ckBxYf6a2oJ48iO7PrT7ChzaxJLq5LYDieT/+F+oBCr8WfBqL1bdc/8mfKoMSvnK2i
	 RFn3hcZfkml5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69B18C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 00:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167158388742.17840.1541678256213450780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4feedd6b534cf08d2f38db664afcb57caec8f352ea0619a366f98b0e5176b9ec
Date: Wed, 21 Dec 2022 00:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671583887
