Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D28708BFA
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 22:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ED85C433D2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 22:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671229287;
	bh=I5VOY4EmtuDeQ1d6kfzDKC55uZZyuTulAvC0zHHCtLU=;
	h=To:Subject:From:Date:From;
	b=DGtuLMpXqJMA86f48nwrH5Fj+3bHCq9Ovo2lZ5YYYQIUc9fRlaLrXggV6Xf97lUMe
	 /mDagc/k0+CWzmxOfWL3GR/mblPrhsX/dDBOKmt+SWRx9+urqdVxTJhFQn+kHJjnS+
	 Hd9hfftXxyo4zyj+JLqu8s6qdRcV+YcR5UdLRluVqygLAWZzBjp+KZmkkDH0uqHmXd
	 23tzFpCj/BLBmrq+8Iq1JtDjTXkbpteUb2LLhD04xfvtrtrQ0Ae5Ht3UOOQ5TYvJGq
	 lS0nvOhp0QkXcfFgqUV3rGVVrQQQPS3y/R1gEFAnvW/9A6EBeyNXmhJzSq+FvvgEJ+
	 cOrcnaDa3Eq4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F930C3DA78
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 22:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167122928738.13103.16339901943150044076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8f8973573a158482574fa8e7a3698ecff04c48d7e07d3ce6a8c99d8d07e5166
Date: Fri, 16 Dec 2022 22:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671229287
