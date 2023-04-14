Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B3B120F6
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 14:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB5A5C433EF
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 14:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681481585;
	bh=c6BkwOq+rCF8MYg5x78sp+FJUw9M15ZqtBqLJzJTMX8=;
	h=To:Subject:From:Date:From;
	b=VvWYbbu39g/rpc/2wNBLTvkf3x6BV0VvOWlJvZHSj9VP5Nutn3tGXzZGZOSC+kh74
	 MsTscw5+9iLdmJ9nSmTVy+KJO3Aty+lMCHAwP+4Et4ScoNuTZAW7Megt0cmV8Iikt2
	 nlFqfGjFbPtmf1/SqsIiAOCt3wbFDhb+8MjsUFxslRVnwfsRmWLywoFx4XZuMCmoYq
	 vmyUeCkvUexT0VpkgSPZGUOq9/dqb6fGrAfHHE92Ai73qHGQijlGXOVQbvzcMx/s8F
	 UisUBeHbZh2QTavzGR2C8pvmD2IJkPE7vuiAu4Zr18KVsQw1h1ucRE83GlpqgGWH95
	 IO4bwEBdP8Z5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE9E6C77B6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 14:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168148158577.31938.5615406059584001397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 183d000bd6502594308a925da81cfe42647538bc60a416101c28bd7d8f106941
Date: Fri, 14 Apr 2023 14:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681481585
