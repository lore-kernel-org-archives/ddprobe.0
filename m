Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 027867C
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 21:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17FAC4314E
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 21:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663795253;
	bh=bfnQLf3qNSdjo3PN/CdzhDKOkaRV0VY3R+DT6+GtvMo=;
	h=To:Subject:From:Date:From;
	b=uSK3dZwzdooKPrr0B69Q+/RAYwz4Y9VKjUCKyTXzoy6DFxQRvmT91NMPfFbcqpIzU
	 4UiNYJN6mDnbrqeH7dbFINNB6J9JmXZHFdFmxgRt84OMLHNssQNoRVzt66WXArbG5a
	 Vrd7x2JqHt+WBq5vQFNMEtFQMYWvffJYQi6zLz+njUjJBM7dAx93akpZ4yXQ3nJb0+
	 9mPi7g/1i21PWrS9IddDylLDwMGl+w95pJA8B4i6Oh3rTpbddE4sKB5nDw045azpwi
	 unMwuJ0OonT37r619NtV8pp8P8k4TLil492tKl9255By38ZgkAXOzGMffVmO85rLuU
	 qMtMZ2Cyr3Ung==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D1EFC32771
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 21:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166379525337.7529.236801523921167108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc59639db9f271247f1f197a8863c4c04c327fdda355148f3f25fbc383c67b1d
Date: Wed, 21 Sep 2022 21:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663795253
