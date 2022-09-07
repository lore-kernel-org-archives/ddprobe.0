Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3D1B5C81
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 13:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 60F01C433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662558053;
	bh=spUN3L0gWfS4WEX9l+H0gdPbbpOtd+FsuN+r5d6Al7Q=;
	h=To:Subject:From:Date:From;
	b=hTeLAm8fvwUrwX0uvm6n4hPIt/yG1RC3tYCuOuTXXrKvGK9HyXI6JPHHheCPi+Ap3
	 zX5Km0LdMz85ycdpGTL4OMme9gNw12tPGxZ/N3pl+ats+nn0MH1AuNj3pBk+73TR7+
	 aZCiZyj/jPKf7mNasIov8J0RLnfFgt2PnjSpSuf/Cq4HMgRq9mTXB6BTxPvJylNK7d
	 kMcGd0HWD76eqxOjtvZjU0+mGyQVOQ03+ClOU6pPKcxptYulP7y63J/dKvjWk7TUOQ
	 HfgLPQwwABRBPWB9tykyAC2BD7PYjEKZrWypgTwOXV2r3v+rns4AuFaEinbn4etT4S
	 CtkyQ0sDq4APA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 503B4C54EE9
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 13:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166255805332.6898.5304650835094907817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54504bdd2be7b3b13bb5548066a3f324e5f8d7c067fec14bc1968f44703fe057
Date: Wed, 07 Sep 2022 13:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662558053
