Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1EF41389
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 07:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2D339C433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 07:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686466926;
	bh=r4wzfwqVurLckcx/UMYI2vV6Pw++kYyfF9rdmgtjcg0=;
	h=To:Subject:From:Date:From;
	b=mN4m9gqPHy+LQ6voXPl87bvRTMJgK1pMPciCoDSCim4dhO+KwP9zu7USQOAzsEd3J
	 iiQv7FbWrstMFZAR2PMmPn5MJhSpH1ZYVNltwMIWAkG4SYTtPn9uy9xEvfxJX9OVKd
	 K/KYPrOhH/tlapp4U4ibgVV2HC66TwuII8CybmVlyz2cup2KOmVpnMGUxxwrnCsUEu
	 iYl9hJtk6FJvW0NPV/BWflksM2pvSP0eChDkxVHt2iIWn+rYWVfUlPBcHZPd9P3aq5
	 JZf6a9w/t6OUdXX5FqWL29AICZqIzy9nVi8fmiIH+U2eMPThc8yjcyb0L1hfKy2XTh
	 hAKrlQ4FCd50Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E642FC77B7A
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 07:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168646692589.24809.16680771547800891620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ea81a8608dc2e3e8dbf40561d1c728e5cfd17c88d95b20cc3e90de303c1ff4e
Date: Sun, 11 Jun 2023 07:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686466925
