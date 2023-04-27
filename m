Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5537323BD
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 09:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07CE5C433D2
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 09:41:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682588466;
	bh=qc/9fbXuEIHx18ifqYK0wCCaEEPujjImu5uNbBrT8WY=;
	h=To:Subject:From:Date:From;
	b=hW2jDUJzr+FZLgtfT/irffbujC95IA1H9p0Cm1VEOHbGkpIOWa75SfBI9f5LUzwwJ
	 MYdmarZCsRNJ2BF6zx4n5qUSLU4ORpQ/JCGCsZhRFETTou1vC1mCe0dvhMwUQNpFQ0
	 12ABZ/Vh9v1be3ieITOjela4RyeVoPJCk3bWND96FA2wa8J3Co6kw0CKn6/ulK2msB
	 Yu4kjS+5+YgmPJoIVD58UWRVZnLyUvovz2+c0qDJaOcfCIF2LhWZW4X9NlnMx0knzC
	 xrJnenBpFoyoRvrVKIOGd6q+FIshpdDDzE3a2gjZAVMw+cF4EhGoLzeJXztVB4w19A
	 bZrmu/F0xLg0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7E33C77B61
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 09:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168258846586.13876.15798934550046181205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e49b9864fcc97c04b9d365b325f2a85f8243768b077cbacff567a1fa4e89eb84
Date: Thu, 27 Apr 2023 09:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682588465
