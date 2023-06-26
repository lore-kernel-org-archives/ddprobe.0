Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E004D505
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 19:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7DE6C433C8
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 19:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687809188;
	bh=I+rjFdGwhHQ7plbKw97F8zV1cEFSX7+Dk9EuBGG5t+c=;
	h=To:Subject:From:Date:From;
	b=u5zB3gzCNnVtajn6Wl5ojGyLdxCkr23JB2+Qw/o96nQmWvsyD6/PS5p9DU8fSWq5S
	 oxuYs+sgTQwW05RsCiwxxk+EGceKMk40aWcX9HnANdVkxKof7DcuoxN1W+fYHkG+mk
	 rk2g1ccZHVU+FebDNbzsExevmwAAnq+1+uud7TcxVfuq2sDVMuE4yF9Dt9G7rRVPwt
	 Qc4y7NFbCAz8++CCZ9XJ+/B5v+6b9oFWkTKzj56X0MEA5cWfnxVFPYDz57v3SLOYEJ
	 BpMdlz3cNpfyReRt57xGRYHR59KGZUem+r8gww+X/TQ3uhot2LHxY8xDylmuzEMlT6
	 AcyZCho8PeAYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF702EB64D7
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 19:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168780918871.24552.3617003060058689936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fb1e568f938c03ff6d0484b154480ae05ca12a6d3fccfe3d2d2882297292a99
Date: Mon, 26 Jun 2023 19:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687809188
