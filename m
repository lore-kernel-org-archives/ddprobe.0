Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3693620
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 00:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A5A1C433D2
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 00:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672186287;
	bh=YOMSpMMVoTcpOzcLY6iMmRkuLB6y754J+Dtb5fiLuGM=;
	h=To:Subject:From:Date:From;
	b=W1CYUXFA+Mo5BGk6Sng8TvW56A1+t6wg2Y/ghmcc946zBXLT89bm9MRWFgxNaJcpg
	 YYwjRRA6WYRFlakLvW3ETncxQp5R7rvjiiroanZKxloM96iQRsWm6MCCSYSwGwmQXu
	 UOzCjGc4yW1cHM7mcOIzNyi3rYsdBKusoYrNllPFtwwJ3CRsNPXZxvL41QopHwH1Mk
	 o1e9c9MWTzNr8r74w9quzPBgw/rZhLP8tMJlfgA40LBo6irszFSpsqwrDsPLn6oi0q
	 tCIvR6THVXKd8sXea4bs8vHj/cCv7O25W3WgQXDT/QPSvXKg1rZr98lVxQj/Oj2vWX
	 3fKLJi3Orsexw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C88AC10F1B
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 00:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167218628743.24175.11476267328377080067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 988c6f32cad40eca447eed650cb5171569840fc22d0525076454db6ae0b54bce
Date: Wed, 28 Dec 2022 00:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672186287
